
sealed class MealDetailsEvent {}

class GetMealDetailsEvent extends MealDetailsEvent{
  GetMealDetailsEvent(this.id);
  final String id;
}

class GetRandomMealEvent extends MealDetailsEvent{
  
}