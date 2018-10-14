const iso = require('subgraph-isomorphism')
var stringSimilarity = require('string-similarity');
var levenshtein = require('fast-levenshtein');
const fs = require('fs')
var readline = require('readline')

var dataP = fs.readFileSync('matrixP.txt', 'utf8');
var dataQ = fs.readFileSync('matrixQ.txt', 'utf8');

var linesP = dataP.split("\n");
var linesQ = dataQ.split("\n");
vertices = []

function getMatrices(vertices, lines)
{
	var index = 2;
	for(var i = 2; i <= lines.length; i++)
	{
		vertices.push(lines[i])
		index++;
	}
}

maxNum = 10

verticesP = []
verticesQ = []
variablesP = []
variablesQ = []
registersP = []
registersQ = []
registersToVarsP = {}
registersToVarsQ = {}


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

function extractVariable(vertices, k, registersToVars, variables) 
{
	let vars = []
	let regs = []
	if(vertices[k].indexOf('%') < 0)
		return []
	let indexes = indexesOf(vertices[k], /%/g)
	for(var i = 0; i < indexes['%'].length; i++)
	{
		let start = indexes['%'][i]
		if(start == 2)
			continue 
		var offset = 0
		for(var j = indexes['%'][i]; j < vertices[k].length + offset; j++)
		{
			if(vertices[k][j] == ',' || vertices[k][j] == ' ' || vertices[k][j] == ')' || j == vertices[k].length - 1)
			{
				var reg ;
				j == vertices[k].length - 1 && vertices[k][j] != ')' ? reg = vertices[k].substring(start) : reg = vertices[k].substring(start, j)
				regs.push(reg)
				if(variables.indexOf(reg) > - 1)
					vars.push(reg)
				else
				{
					vars.push('|')
					if(registersToVars[reg] != undefined) vars.push(registersToVars[reg].filter(e => e != '|'))
				}
				break;
			}
		}
	}
	regs.forEach(val => vertices[k] = replaceOccurances(vertices[k], val, ''))
	var vars_flat = [].concat.apply([], vars);
	vars_flat.forEach(val => vertices[k] += ' ' + val)
	return vars
}


function getOpcode(str)
{
	if(str === undefined) return ''
	var index = 0
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


function identifyVariables(vertices, variables, registers, registersToVars)
{
	for(var i = 0; i < vertices.length; i++)
	{
		if(vertices[i] === undefined)
			continue
		if(vertices[i].indexOf('alloca') > -1)	// this variable is going to get used
		{
			var variable = vertices[i].substring(vertices[i].lastIndexOf('%'), vertices[i].indexOf('=') )
			variables.push(variable)
			vertices[i] = vertices[i].substring(vertices[i].indexOf('=') + 2)
			vertices[i] = replaceOccurances(vertices[i], variable, '')
			vertices[i] += ' ' + variable
			//instructionsUsingVar.push({[vertices[i]] : [variable]})
		}
		else if(vertices[i].indexOf('store') > -1)
		{
			var reg, regToVars = []
			if(vertices[i].indexOf('%') != vertices[i].lastIndexOf('%'))
			{
				reg = vertices[i].substring(vertices[i].indexOf('%'), vertices[i].indexOf(',') )
				if(variables.indexOf(reg) <= - 1 && reg in registersToVars)
				{
					regToVars.push('|')
					regToVars = registersToVars[reg]
				}
			}
			var variable = vertices[i].substring(vertices[i].lastIndexOf('%'), vertices[i].lastIndexOf(',') )
			vertices[i] = replaceOccurances(vertices[i], ' '+variable+',', '') // this is... ugly
			if(variables.indexOf(variable) <= - 1 && variable in registersToVars)
			{
				regToVars.push('|')
				regToVars = regToVars.concat(registersToVars[variable].filter(e => e != '|'))
			}
			else
				vertices[i] += ' ' + variable
			variables.push(variable)
			vertices[i] = replaceOccurances(vertices[i], reg, '')
			regToVars.forEach(val => vertices[i] += ' ' + val)
			//instructionsUsingVar.push({[vertices[i]] : regToVars})
		}
		else if(vertices[i][2] == '%')
		{
			var temp = vertices[i].substring(vertices[i].indexOf('%'), vertices[i].indexOf('=') - 1 )
			var vars = extractVariable(vertices, i, registersToVars, variables)
			var vars_flat = [].concat.apply([], vars);
			vertices[i] = vertices[i].substring(vertices[i].indexOf('=') + 2)
			registersToVars[temp] = vars_flat
			//instructionsUsingVar.push({[vertices[i]] : vars_flat})
			registers.push(temp)
		}
		else
		{
			vertices.splice(i, 1)
			i--
		}
		// else, remove from array cuz ya ugly
	}
}

function findClosetMatch(inst, instMapToMin, extra_insts)
{
	var min = 9999 // get something better 
	var other_inst = ''
	var other_inst_dis = 0

	for(var j = 0; j < verticesQ.length; j++)
	{
		if(getOpcode(inst) == getOpcode(verticesQ[j]))
		{
			var distance = levenshtein.get(inst, verticesQ[j])
			if(distance < min) 
			{
				if(verticesQ[j] in instMapToMin && instMapToMin[verticesQ[j]][1] > distance || !(verticesQ[j] in instMapToMin))
				{	// if that place isn't occupied OR if it is but your solution is better
					min = distance
					q_inst = verticesQ[j]
					if(q_inst in instMapToMin) 
					{
						other_inst_dis = instMapToMin[q_inst][1]
						other_inst = instMapToMin[q_inst][0]
					}
				}
			}
		}
	}
	if(min < 15)
	{
		instMapToMin[q_inst] = [inst, min]
		if(other_inst)
			return findClosetMatch(other_inst, instMapToMin, extra_insts) + min - other_inst_dis
		return min
	}
	else
	{
		extra_insts.push(inst)
		return 0
	}
}


function letTheGamesBegin()
{
	instMapToMin = {}
	for(var i = 0; i < verticesP.length; i++)
	{
		for(var j = 0; j < verticesQ.length; j++)
		{
			var cmp = false
			if(getOpcode(verticesP[i]) == 'icmp' && getOpcode(verticesQ[j]) == 'icmp')
			{
				var sign1 = verticesP[i][6]
				var sign2 = verticesQ[j][6]
				var lhs_p = verticesP[i].substring(verticesP[i].indexOf('|'), verticesP[i].lastIndexOf('|') - 1 )
				var rhs_p = verticesP[i].substring(verticesP[i].lastIndexOf('|') )
				var lhs_q = verticesQ[j].substring(verticesQ[j].indexOf('|'), verticesQ[j].lastIndexOf('|') - 1 )
				var rhs_q = verticesQ[j].substring(verticesQ[j].lastIndexOf('|') )
				
				if(sign1 != sign2 && lhs_p === rhs_q && lhs_q === rhs_p ) 
				{
					instMapToMin[verticesQ[j]] = [verticesP[i], 0]
					cmp = true
				}
			}
			if(verticesP[i] == verticesQ[j] || cmp)
			{
				verticesP.splice(i , 1)
				verticesQ.splice(j, 1)
				i--;
				break;
			}
		}
	}

	i = 0
	extra_insts = []
	var bleh = 0
	while(verticesP.length)
	{
		bleh += findClosetMatch(verticesP[i], instMapToMin, extra_insts)
		verticesP.splice(i, 1)
	}
	for(key in instMapToMin)
	{
		verticesQ.splice(verticesQ.indexOf(key), 1)
	}
	extra_insts = extra_insts.concat(verticesQ)
	delete instMapToMin['  store i32 , i32* align 4 %temp | %arr.addr %j']
	//console.log("Mapping of P to Q: ")
	//console.log(instMapToMin)
	//console.log("Extra instructions:")
	//console.log(extra_insts)
	bleh += extra_insts.length*2
	console.log("Offset: " +  bleh)
}


getMatrices(verticesP, linesP)
getMatrices(verticesQ, linesQ)

identifyVariables(verticesP, variablesP, registersP, registersToVarsP)
identifyVariables(verticesQ, variablesQ, registersQ, registersToVarsQ)
letTheGamesBegin()