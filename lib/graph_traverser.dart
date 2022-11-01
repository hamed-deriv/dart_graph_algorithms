import 'dart:collection';

import 'package:dart_graph_algorithms/edge.dart';
import 'package:dart_graph_algorithms/vertex.dart';

void depthFirstTraverser<T>(Vertex<T> start, List<Vertex<T>> visitedVertices) {
  print('${start.data}');

  for (final Edge<T> edge in start.edges) {
    final Vertex<T> neighbor = edge.end;

    if (!visitedVertices.any((Vertex<T> visited) => visited == neighbor)) {
      visitedVertices.add(neighbor);

      depthFirstTraverser(neighbor, visitedVertices);
    }
  }
}

void breadthFirstTraverser<T>(Vertex<T> start) {
  final List<Vertex<T>> visitedVertices = <Vertex<T>>[];
  final Queue<Vertex<T>> queue = Queue<Vertex<T>>()..addLast(start);

  while (queue.isNotEmpty) {
    final Vertex<T> current = queue.removeFirst();

    print('${current.data}');

    for (final Edge<T> edge in current.edges) {
      final Vertex<T> neighbor = edge.end;

      if (!visitedVertices.any((Vertex<T> visited) => visited == neighbor)) {
        visitedVertices.add(neighbor);
        queue.addLast(neighbor);
      }
    }
  }
}
