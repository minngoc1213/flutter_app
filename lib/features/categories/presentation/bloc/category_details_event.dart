
sealed class CategoryDetailsEvent{}

class GetCategoryDetailsEvent extends CategoryDetailsEvent{
  GetCategoryDetailsEvent(this.category);
  String category;
}