import 'dart:developer' as dev;

import 'package:equatable/equatable.dart';

import 'package:dart_graph_algorithms/edge.dart';

class Vertex<T> with EquatableMixin {
  Vertex({required this.data, List<Edge<T>>? edges}) : super() {
    _edges = edges ?? <Edge<T>>[];
  }

  final T data;
  late final List<Edge<T>> _edges;

  List<Edge<T>> get edges => _edges;

  void addEdge({required Vertex<T> end, double? weight}) =>
      _edges.add(Edge<T>(start: this, end: end, weight: weight));

  void removeEdge(Vertex<T> vertex) =>
      _edges.removeWhere((Edge<T> edge) => edge.end == vertex);

  void print() {
    for (final Edge<T> edge in _edges) {
      dev.log('$data --(${edge.weight})--> ${edge.end.data}');
    }
  }

  @override
  List<Object?> get props => <Object?>[data, _edges];

  @override
  bool? get stringify => true;
}
