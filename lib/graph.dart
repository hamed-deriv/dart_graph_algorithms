import 'package:dart_graph_algorithms/vertex.dart';

class Graph<T> {
  Graph({
    List<Vertex<T>>? vertices,
    this.isDirected = true,
  }) : super() {
    _vertices = vertices ?? <Vertex<T>>[];
  }

  late final List<Vertex<T>> _vertices;
  final bool isDirected;

  List<Vertex<T>> get vertices => _vertices;

  Vertex<T> addVertex(T data) {
    final Vertex<T> vertex = Vertex<T>(data: data);

    _vertices.add(vertex);

    return vertex;
  }

  void addEdge({
    required Vertex<T> vertex1,
    required Vertex<T> vertex2,
    double? weight,
  }) {
    vertex1.addEdge(end: vertex2, weight: weight);

    if (!isDirected) {
      vertex2.addEdge(end: vertex1, weight: weight);
    }
  }

  void removeEdge({required Vertex<T> vertex1, required Vertex<T> vertex2}) {
    vertex1.removeEdge(vertex2);

    if (!isDirected) {
      vertex2.addEdge(end: vertex1);
    }
  }

  void removeVertex(Vertex<T> vertex) => vertices.remove(vertex);

  Vertex<T> getVertex(T data) =>
      vertices.firstWhere((Vertex<T> vertex) => vertex.data == data);

  void print() {
    for (final Vertex<T> vertex in vertices) {
      vertex.printEdges();
    }
  }
}
