import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

part 'slidable_item_action.dart';

const _defaultActionSize = 5;

class SlidableItemList<T> extends StatelessWidget {
  final List<T> list;
  final ItemClickCallback<T> itemClickCallback;
  final RefreshCallback refreshCallback;
  final List<SlidableItemAction<T>>? startActionList;
  final List<SlidableItemAction<T>>? endActionList;
  final SlidableItemBuilder<T> itemBuilder;

  const SlidableItemList({
    super.key,
    required this.list,
    required this.itemClickCallback,
    required this.refreshCallback,
    this.startActionList,
    this.endActionList,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshCallback,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              itemClickCallback(list[index]);
            },
            child: Slidable(
              startActionPane: getActionPane(
                actionList: startActionList,
                item: list[index],
              ),
              endActionPane: getActionPane(
                actionList: endActionList,
                item: list[index],
              ),
              useTextDirection: false,
              child: itemBuilder(context, list[index]),
            ),
          );
        },
        itemCount: list.length,
      ),
    );
  }

  ActionPane? getActionPane({
    List<SlidableItemAction>? actionList,
    required T item,
  }) {
    if (actionList == null || actionList.isEmpty) return null;
    return ActionPane(
      extentRatio: actionList.length / _defaultActionSize,
      motion: const BehindMotion(),
      children: actionList.map((action) => action.to(item)).toList(),
    );
  }
}

typedef ItemClickCallback<T> = void Function(T item);
typedef SlidableItemBuilder<T> = Widget Function(BuildContext context, T item);
