import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

@RoutePage()
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends BasePageState<TodoPage, TodoViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        leadingIcon: LeadingIcon.none,
        titleText: S.current.todoText,
      ),
      body: Column(
        children: [
          Selector<TodoViewModel, TodoViewModelData>(
            selector: (_, vm) => vm.viewModelData,
            shouldRebuild: (prev, next) => prev.type != next.type,
            builder: (_, vmData, __) {
              return SizedBox(
                height: Dimens.d32.responsive(),
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    final todoType = TodoType.values[index];
                    final isSelected = todoType == vmData.type;
                    return SizedBox(
                      width: Dimens.d100.responsive(),
                      child: StandardButton(
                        innerGap: 0,
                        leadingIconSize: 0,
                        trailingIconSize: 0,
                        buttonType: isSelected
                            ? ButtonType.primary
                            : ButtonType.secondary,
                        buttonSize: ButtonSize.small,
                        text: todoType.todoTypeName,
                        onPressed: () {
                          viewModel.selectTodoType(todoType);
                        },
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => SizedBox(
                    width: Dimens.d8.responsive(),
                  ),
                  itemCount: TodoType.values.length,
                ),
              );
            },
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          Expanded(
            child: _buildBody(),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () async {
          final resp = await navigator.push(const AppRouteInfo.todoDetails());
          if (resp != null) {
            viewModel.init();
          }
        },
        child: Assets.lottie.lottieAdd.lottie(
          width: Dimens.d64.responsive(),
          height: Dimens.d64.responsive(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Selector<TodoViewModel, TodoViewModelData>(
      selector: (_, vm) => vm.viewModelData,
      shouldRebuild: (prev, next) => prev.todos != next.todos,
      builder: (_, vmData, __) {
        if (vmData.todos.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                S.current.todoIsEmptyText,
                textAlign: TextAlign.center,
                style: AppTextStyles.s14w400primary().font20().bold,
              ),
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
              Assets.lottie.lottieTodo.lottie(
                width: Dimens.d128.responsive(),
                height: Dimens.d128.responsive(),
              ),
            ],
          );
        }
        final todos = vmData.todos;
        return RefreshIndicator(
          onRefresh: () async {
            viewModel.init();
          },
          child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(
              height: Dimens.d8.responsive(),
            ),
            itemCount: todos.length,
            itemBuilder: (_, index) {
              final todoItem = todos[index];
              return GestureDetector(
                onTap: () async {
                  final resp = await navigator.push(
                    AppRouteInfo.todoDetails(todo: todoItem),
                  );

                  if (resp != null) {
                    viewModel.init();
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.d16.responsive(),
                    vertical: Dimens.d8.responsive(),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
                    border: Border(
                      top: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d2.responsive(),
                      ),
                      bottom: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d6.responsive(),
                      ),
                      left: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d2.responsive(),
                      ),
                      right: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d2.responsive(),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              todoItem.title,
                              style:
                                  AppTextStyles.s14w400primary().font16().bold,
                            ),
                            SizedBox(
                              height: Dimens.d4.responsive(),
                            ),
                            Text(
                              todoItem.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.s14w400primary()
                                  .font12()
                                  .regular,
                            ),
                            SizedBox(
                              height: Dimens.d4.responsive(),
                            ),
                            Text(
                              "${S.current.todoType}: ${todoItem.type.todoTypeName}",
                              style: AppTextStyles.s14w400primary().font12(),
                            ),
                            SizedBox(
                              height: Dimens.d4.responsive(),
                            ),
                            Text(
                              "${S.current.todoPriority}: ${todoItem.priority.priorityName}",
                              style: AppTextStyles.s14w400primary().font12(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: Dimens.d8.responsive(),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StandardButton(
                              buttonType: ButtonType.primary,
                              buttonSize: ButtonSize.small,
                              leadingIconSize: 0,
                              trailingIconSize: 0,
                              innerGap: 0,
                              text: todoItem.completed
                                  ? S.current.undoneTodo
                                  : S.current.doneTodo,
                              onPressed: () async {
                                if (todoItem.completed) {
                                  viewModel.markTodoStatus(
                                      todo: todoItem, isCompleted: false);
                                } else {
                                  viewModel.markTodoStatus(
                                      todo: todoItem, isCompleted: true);
                                }
                              },
                            ),
                            SizedBox(
                              height: Dimens.d8.responsive(),
                            ),
                            StandardButton(
                              buttonType: ButtonType.danger,
                              buttonSize: ButtonSize.small,
                              leadingIconSize: 0,
                              trailingIconSize: 0,
                              innerGap: 0,
                              text: S.current.deleteTodo,
                              onPressed: () async {
                                await navigator.showDialog(
                                  AppPopupInfo.confirmDialog(
                                    message: S.current.todoDeleteConfirmation,
                                    onPressed: Func0(
                                      () {
                                        viewModel.deleteTodoById(todoItem.id);
                                        navigator.pop();
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  void initViewModels() {
    viewModel.init();
  }

  @override
  String get screenName => 'TodoPage';
}
