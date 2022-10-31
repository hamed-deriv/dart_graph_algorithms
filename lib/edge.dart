import 'package:equatable/equatable.dart';

import 'package:dart_graph_algorithms/vertex.dart';

class Edge<T> with EquatableMixin {
  Edge({required this.start, required this.end, this.weight});

  final Vertex<T> start;
  final Vertex<T> end;
  final double? weight;

  @override
  List<Object?> get props => <Object?>[start, end, weight];

  @override
  bool? get stringify => true;
}
