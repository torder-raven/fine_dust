import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

part 'slidable_item_action.dart';

const _defaultActionSize = 5;

class SlidableItemList<T> extends StatefulWidget {
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
  State<SlidableItemList<T>> createState() => _SlidableItemListState<T>();
}

class _SlidableItemListState<T> extends State<SlidableItemList<T>>
    with SingleTickerProviderStateMixin {
  late final controller = SlidableController(this);

  @override
  void initState() {
    super.initState();
    controller.enableStartActionPane =
        widget.startActionList?.isNotEmpty ?? false;
    controller.enableEndActionPane = widget.endActionList?.isNotEmpty ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: widget.refreshCallback,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              widget.itemClickCallback(widget.list[index]);
            },
            child: Slidable(
              startActionPane: getActionPane(
                actionList: widget.startActionList,
                item: widget.list[index],
              ),
              endActionPane: getActionPane(
                actionList: widget.endActionList,
                item: widget.list[index],
              ),
              useTextDirection: false,
              child: widget.itemBuilder(context, widget.list[index]),
            ),
          );
        },
        itemCount: widget.list.length,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
