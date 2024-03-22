part of 'slidable_item_list.dart';

@immutable
class SlidableItemAction<T> {
  final Color backgroundColor;
  final Color? foregroundColor;
  final IconData? icon;
  final SlidableActionCallback<T> callback;

  const SlidableItemAction({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.callback,
  });

  SlidableAction to(T item) {
    return SlidableAction(
      onPressed: (_) => callback(item),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      icon: icon,
    );
  }
}

typedef SlidableActionCallback<T> = void Function(T item);
