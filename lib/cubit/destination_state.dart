part of 'destination_cubit.dart';

sealed class DestinationState extends Equatable {
  const DestinationState();
}

final class DestinationInitial extends DestinationState {
  @override
  List<Object> get props => [];
}

class DestinationLoading extends DestinationState {
  @override
  List<Object?> get props => [];
}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;

  DestinationSuccess(this.destinations);

  @override
  List<Object?> get props => [destinations];
}
class DestinationFailed extends DestinationState {
  final String error;

  DestinationFailed(this.error);

  @override
  List<Object?> get props => [error];
}
