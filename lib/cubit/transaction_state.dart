part of 'transaction_cubit.dart';

sealed class TransactionState extends Equatable {
  const TransactionState();
}

final class TransactionInitial extends TransactionState {
  @override
  List<Object> get props => [];
}

class TransactionLoading extends TransactionState {
  @override
  List<Object?> get props => [];
}

class TransactionSuccess extends TransactionState {
  final List<TransactionModel> transactions;

  TransactionSuccess(this.transactions);

  @override
  List<Object?> get props => [transactions];
}

class TransactionFailed extends TransactionState {
  final String error;

  TransactionFailed(this.error);

  @override
  List<Object?> get props => [error];
}
