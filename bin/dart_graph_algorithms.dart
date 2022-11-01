import 'package:dart_graph_algorithms/graph_traverser.dart';
import 'package:dart_graph_algorithms/vertex.dart';

import 'test_graph.dart';

void main(List<String> arguments) {
  final TestGraph tester = TestGraph();

  print('### DFS ###');
  depthFirstTraverser(tester.start, <Vertex<String>>[]);

  print('\n### BFS ###');
  breadthFirstTraverser(tester.start);
}
