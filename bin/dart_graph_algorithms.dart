// ignore_for_file: cascade_invocations

import 'package:dart_graph_algorithms/graph.dart';

void main(List<String> arguments) {
  final Graph<String> graph = Graph<String>(isDirected: false);

  graph.addVertex('A');
  graph.addVertex('B');

  graph.addEdge(
    vertex1: graph.getVertex('A'),
    vertex2: graph.getVertex('B'),
    weight: 100,
  );

  graph.print();

  graph.removeVertex(graph.getVertex('A'));

  graph.print();
}
