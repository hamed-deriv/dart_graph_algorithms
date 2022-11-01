import 'package:dart_graph_algorithms/graph.dart';
import 'package:dart_graph_algorithms/vertex.dart';

class TestGraph {
  TestGraph() {
    _initialize();
  }

  final Graph<String> graph = Graph<String>();

  void _initialize() {
    graph
      ..addVertex('v0.0.0')
      ..addVertex('v1.0.0')
      ..addVertex('v2.0.0')
      ..addVertex('v1.1.0')
      ..addVertex('v1.2.0')
      ..addVertex('v2.1.0')
      ..addVertex('v1.1.1')
      ..addVertex('v1.1.2')
      ..addVertex('v1.2.1')
      ..addVertex('v2.1.1')
      ..addEdge(
        vertex1: graph.getVertex('v0.0.0'),
        vertex2: graph.getVertex('v1.0.0'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v0.0.0'),
        vertex2: graph.getVertex('v2.0.0'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v1.0.0'),
        vertex2: graph.getVertex('v1.1.0'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v1.0.0'),
        vertex2: graph.getVertex('v1.2.0'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v2.0.0'),
        vertex2: graph.getVertex('v2.1.0'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v1.1.0'),
        vertex2: graph.getVertex('v1.1.1'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v1.1.0'),
        vertex2: graph.getVertex('v1.1.2'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v1.2.0'),
        vertex2: graph.getVertex('v1.2.1'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v2.1.0'),
        vertex2: graph.getVertex('v2.1.1'),
      )
      ..addEdge(
        vertex1: graph.getVertex('v2.1.1'),
        vertex2: graph.getVertex('v2.0.0'),
      );
  }

  Vertex<String> get start => graph.getVertex('v0.0.0');
}
