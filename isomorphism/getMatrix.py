import sys
import pprint

file = open(sys.argv[2], "r")
s = file.read()
lines = s.split("\n")
all_edges = []
pairs = []

for line in lines:
	edge = line.replace(";", "").replace("\t", "").replace("\"", "").split("->")
	if len(edge) == 2:
		all_edges.append(edge[0].strip())
		all_edges.append(edge[1].strip())
		pairs.append([edge[0].strip(), edge[1].strip()])

unique_edges = list(set(all_edges))
#pprint.pprint(all_edges)
#pprint.pprint(pairs)
#pprint.pprint(unique_edges)
matrix = {origin: {dest: 0 for dest in unique_edges} for origin in unique_edges}
for p in pairs:
	matrix[p[0]][p[1]] += 1

#pprint.pprint(matrix)
#print(len(matrix))

vertices = []
[vertices.append(node) for node in unique_edges if node not in vertices]

vertices = sorted(vertices)
pprint.pprint(vertices)

adjacency_matrix = [[0]*len(vertices) for i in range(len(vertices))]

for node1 in vertices:
	for node2 in vertices:
		if [node1, node2] in pairs:
			i = vertices.index(node1)
			j = vertices.index(node2)
			adjacency_matrix[i][j] = 1
			#print([node1, node2])
#well that was ridiciously easy.

#print(adjacency_matrix)

output_file = sys.argv[1]
with open(output_file, 'w') as the_file:
	the_file.write(str(len(vertices)) + '\n')
	for node in vertices:
		the_file.write(node + '\n')
	for row in range(len(adjacency_matrix)):
		for col in range(len(adjacency_matrix[row])):
			the_file.write(str(adjacency_matrix[row][col]) + '\n')





















