const iso = require('subgraph-isomorphism')
var stringSimilarity = require('string-similarity');
const fs = require('fs')
var readline = require('readline')

var dataP = fs.readFileSync('matrixP.txt', 'utf8');
var dataQ = fs.readFileSync('matrixQ.txt', 'utf8');

var linesP = dataP.split("\n");
var linesQ = dataQ.split("\n");
vertices = []

var lengthP = parseInt(linesP[0])
var lengthQ = parseInt(linesQ[0])

var smaller = Math.min(lengthP, lengthQ) - 2
//(lengthP < lengthQ) ? smaller = 'P' : smaller = 'Q'
console.log(smaller)
function getMatrices(P, vertices, lines, length)
{
	var index = 2;
	for(var i = 2; i <= length; i++)
	{
		vertices.push(lines[i])
		index++;
	}
}

maxNum = 10

var P = []
var Q = []
verticesP = []
verticesQ = []
renamedVariables = {}
variablesP = []
variablesQ = []
variableUsersP = {}
variableUsersQ = {}
registersP = []
registersQ = []
registersToVarsP = {}
registersToVarsQ = {}

/*function doesContain(str, query)
{ // is query in str
	return new RegExp('\\b' + query + '\\b').test(str)
}*/

function replaceOccurances(str, find, replace)
{
	return str.replace(new RegExp(find, 'g'), replace);
}

function indexesOf(string, regex) 
{
	var match,
		indexes = [];

	regex = new RegExp(regex);

	while (match = regex.exec(string)) {
		if (!indexes[match[0]]) indexes[match[0]] = [];
		indexes[match[0]].push(match.index);
	}

	return indexes;
}

function extractVariable(str, registersToVars, variables, ins) 
{
	let vars = []
	if(str.indexOf('%') < 0)
		return []
	let indexes = indexesOf(str, /%/g)
	for(var i = 0; i < indexes['%'].length; i++)
	{
		let start = indexes['%'][i]
		if(start == 2)
			continue
		for(var j = indexes['%'][i]; j < str.length; j++)
		{
			if(str[j] == ',' || str[j] == ' ' || j == str.length - 1)
			{
				var reg;
				j == str.length - 1 ? reg = str.substring(start) : reg = str.substring(start, j)
				console.log('reg: ' + reg)
				console.log(variables)
				if(variables.indexOf(reg) > - 1)
					vars.push(reg)
				else
					vars.push(registersToVars[reg])
				break;
			}
		}
	}
	return vars
}


function getOpcode(str)
{
	var index = 2
	if(str[2] == '%')
		index = str.indexOf('=') + 2
	else if(str[3] == '=')
		index = 5

	for(var i = index; i < str.length; i++)
	{
		if(str[i] == ' ')
			return str.substring(index, i)
	}
}

function arraysEqual(arr1, arr2) 
{
	if(arr1.length !== arr2.length)
		return false;
	for(var i = arr1.length; i--;) 
	{
		if(arr1[i] !== arr2[i])
			return false;
	}
	return true;
}


function identifyVariables(vertices, variables, registers, registersToVars)
{
	for(var i = 0; i < smaller; i++)
	{
		if(vertices[i].indexOf('alloca') > -1)	// this variable is going to get used
		{
			variables.push(vertices[i].substring(vertices[i].lastIndexOf('%'), vertices[i].indexOf('=') - 1 ))
			continue;
		}
		else if(vertices[i][2] == '%')
		{
			var temp = vertices[i].substring(vertices[i].indexOf('%'), vertices[i].indexOf('=') - 1 )
			var vars = extractVariable(vertices[i], registersToVars, variables, 1)
			registersToVars[temp] = [].concat.apply([], vars);
			registers.push(temp)
		}
	}
}

function allVariableUsers(vertices, variables, registers, variableUsers, registersToVars)
{
	for(var i = 0; i < smaller; i++)
	{
		var pls = vertices[i].split(' ')
		if (vertices[i].indexOf('load') > -1 ) continue

		variables.forEach(val =>
		{
			if(pls.indexOf(val) > -1 || pls.indexOf(val+',') > -1 || pls.indexOf(','+val) > -1) // :'(((
			{
				var user = vertices[i]
				var user = replaceOccurances(vertices[i], val, '')
				//var user = replaceOccurances(user, ',', '')
				//var user = replaceOccurances(user, ' ', '')
				val in variableUsers ? variableUsers[val].push(user) : variableUsers[val] = [user];
			}
		})
		registers.forEach(val =>
		{
			if(pls.indexOf(val) > -1 || pls.indexOf(val+',') > -1 || pls.indexOf(','+val) > -1) // :'(((
			{
				var user = vertices[i]
				var user = replaceOccurances(vertices[i], val, '')
				//var user = replaceOccurances(user, ',', '')
				//var user = replaceOccurances(user, ' ', '')
				var variable = registersToVars[val]
				variable in variableUsers ? variableUsers[variable].push(user) : variableUsers[variable] = [user];
			}
		})
	}
}

function detectRenamedVariables(key, key2)
{
	var count = 0
	var different = []
	if(key == key2)
		return true
	if(key in renamedVariables && renamedVariables[key] == key2)
	{
		console.log('popping ' + key + ' ' + key2)
		//variablesP.splice(variablesP.indexOf(key), 1)
		//variablesQ.splice(variablesQ.indexOf(key2), 1)
		return true
	}
	else if(key in renamedVariables && renamedVariables[key] != key2)
	{
		return false
	}
	if(key != key2 )
	{
		var arr1 = variableUsersP[key]
		var arr2 = variableUsersQ[key2]
		for(var i = 0; i < arr1.length; i++)
		{
			for(var j = 0; j < arr2.length; j++)
			{
				if(getOpcode(arr1[i]) == getOpcode(arr2[j]))
				{
					console.log('~~~~~~~~~~')
					console.log('key: ' + key)
					console.log('key2: ' + key2)
					var one = extractVariable(arr1[i], registersToVarsP, variablesP, 0)
					var two = extractVariable(arr2[j], registersToVarsQ, variablesQ, 0)
					var one_flat = [].concat.apply([], one)
					var two_flat = [].concat.apply([], two)
					var same = true
					//console.log(arr1[i])
					//console.log(arr2[j])
					//console.log(one_flat)
					//console.log(two_flat)
					if(one_flat.length == two_flat.length)
					{
						for (var k = one_flat.length - 1; k >= 0; k--) 
						{
							if(one_flat[k] != key && two_flat[k] != key2)
							{
								console.log(arr1[i])
								console.log(arr2[j])
								console.log('checking ' + one_flat[k] + ' with ' + two_flat[k])
								console.log(detectRenamedVariables(one_flat[k], two_flat[k]))
								if(detectRenamedVariables(one_flat[k], two_flat[k]))
								{
									console.log('Instructions are the same! ' + count)
									count++;
								}
							}
						}  
					}
				} 
			}
		}
		if(count > 5)
		{
			console.log('>>>>>>>>>>>>>> ' + key + ' ' + key2 + ' ' + count + ' ' + variableUsersP[key].length)
			renamedVariables[key] = key2
			return true
		}
		//console.log(variableUsersP[key])
		//console.log(variableUsersQ[key2])
	}
}

// who is referring to this instruction?

function fml() 
{
	let index = 0
	while(variablesQ.length && variablesP.length)
	{
		detectRenamedVariables(variablesP[index], variablesQ[index])
		index++
	}
}

getMatrices(P, verticesP, linesP, lengthP)
getMatrices(Q, verticesQ, linesQ, lengthQ)

identifyVariables(verticesP, variablesP, registersP, registersToVarsP)
identifyVariables(verticesQ, variablesQ, registersQ, registersToVarsQ)

allVariableUsers(verticesP, variablesP, registersP, variableUsersP, registersToVarsP)
allVariableUsers(verticesQ, variablesQ, registersQ, variableUsersQ, registersToVarsQ)
fml()
//console.log(variableUsersP['%tmp5'])
//console.log(variableUsersQ)
//console.log(registersToVarsP)
//console.log(registersToVarsQ)
console.log(variablesP)
console.log(variablesQ)
//console.log(registersQ)



//console.log(iso.getIsomorphicSubgraphs(Q, P, maxNum, similarityCriteria, verticesP, verticesQ))
console.log(renamedVariables);