import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

@RoutePage()
class TodoDetailsPage extends StatefulWidget {
  const TodoDetailsPage({
    super.key,
    this.todo,
  });

  final UserTodo? todo;

  @override
  State<TodoDetailsPage> createState() => _TodoDetailsPageState();
}

class _TodoDetailsPageState
    extends BasePageState<TodoDetailsPage, TodoDetailsViewModel> {
  final _formKey = GlobalKey<FormState>();
  late final _titleController = TextEditingController()..disposeBy(disposeBag);
  late final _descriptionController = TextEditingController()
    ..disposeBy(disposeBag);

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      resizeToAvoidBottomInset: true,
      appBar: CommonAppBar(
        titleText:
            widget.todo != null ? S.current.updateTodo : S.current.createTodo,
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    viewModel.init(todo: widget.todo);
    if (widget.todo != null) {
      _titleController.text = widget.todo!.title;
      _descriptionController.text = widget.todo!.description;
    }
  }

  Widget _buildBody() {
    return Column(
      children: [
        Expanded(child: _buildForm()),
        _buildSaveButton(),
      ],
    );
  }

  Widget _buildForm() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          spacing: Dimens.d12.responsive(),
          children: [
            _buildTitleField(),
            _buildDescriptionField(),
            _buildTypeField(),
            _buildPriorityField(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleField() {
    return Column(
      spacing: Dimens.d8.responsive(),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.todoTitle,
          style: AppTextStyles.s14w400primary().font12().bold,
        ),
        StandardTextField(
          label: S.current.todoTitle,
          controller: _titleController,
          onChanged: (value) {
            if (value == null) return;
            viewModel.updateTitle(value);
          },
        ),
      ],
    );
  }

  Widget _buildDescriptionField() {
    return Column(
      spacing: Dimens.d8.responsive(),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.todoDescription,
          style: AppTextStyles.s14w400primary().font12().bold,
        ),
        StandardTextField(
          label: S.current.todoDescription,
          maxLines: 6,
          controller: _descriptionController,
          onChanged: (value) {
            if (value == null) return;
            viewModel.updateDescription(value);
          },
        ),
      ],
    );
  }

  Widget _buildTypeField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Dimens.d8.responsive(),
      children: [
        Text(
          S.current.todoType,
          style: AppTextStyles.s14w400primary().font12().bold,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Dimens.d16.responsive(),
            ),
            color: FoundationColors.neutral200.withValues(alpha: 0.5),
            border: Border.all(
              color: FoundationColors.secondary400.withValues(alpha: 0.5),
              width: Dimens.d1.responsive(),
            ),
          ),
          child: Selector<TodoDetailsViewModel, TodoDetailsViewModelData>(
            selector: (_, viewModel) => viewModel.viewModelData,
            shouldRebuild: (prev, curr) {
              return prev.type != curr.type;
            },
            builder: (_, vmData, __) {
              return DropdownButtonHideUnderline(
                child: DropdownButton2<TodoType>(
                  isExpanded: true,
                  items: TodoType.values.map(
                    (e) {
                      return DropdownMenuItem<TodoType>(
                        value: e,
                        child: Text(
                          e.todoTypeName,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.s14w400primary().font16(),
                        ),
                      );
                    },
                  ).toList(),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      color: AppColors.current.backgroundColor,
                      borderRadius: BorderRadius.circular(
                        Dimens.d16.responsive(),
                      ),
                    ),
                  ),
                  style: AppTextStyles.s14w400primary().font16(),
                  alignment: Alignment.center,
                  value: vmData.type,
                  onChanged: (value) {
                    if (value == null) return;
                    viewModel.updateType(value);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPriorityField() {
    return Column(
      spacing: Dimens.d8.responsive(),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.todoPriority,
          style: AppTextStyles.s14w400primary().font12().bold,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Dimens.d16.responsive(),
            ),
            color: FoundationColors.neutral200.withValues(alpha: 0.5),
            border: Border.all(
              color: FoundationColors.secondary400.withValues(alpha: 0.5),
              width: Dimens.d1.responsive(),
            ),
          ),
          child: Selector<TodoDetailsViewModel, TodoDetailsViewModelData>(
            selector: (_, viewModel) => viewModel.viewModelData,
            shouldRebuild: (prev, curr) {
              return prev.priority != curr.priority;
            },
            builder: (_, vmData, __) {
              return DropdownButtonHideUnderline(
                child: DropdownButton2<TodoPriority>(
                  isExpanded: true,
                  items: TodoPriority.values.map(
                    (e) {
                      return DropdownMenuItem<TodoPriority>(
                        value: e,
                        child: Text(
                          e.priorityName,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.s14w400primary().font16(),
                        ),
                      );
                    },
                  ).toList(),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      color: AppColors.current.backgroundColor,
                      borderRadius: BorderRadius.circular(
                        Dimens.d16.responsive(),
                      ),
                    ),
                  ),
                  style: AppTextStyles.s14w400primary().font16(),
                  alignment: Alignment.center,
                  value: vmData.priority,
                  onChanged: (value) {
                    if (value == null) return;
                    viewModel.updatePriority(value);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return StandardButton(
      buttonType: ButtonType.primary,
      buttonSize: ButtonSize.medium,
      text: widget.todo != null ? S.current.updateTodo : S.current.createTodo,
      onPressed: () {
        if (_formKey.currentState?.validate() == true) {
          if (widget.todo != null) {
            viewModel.updateTodo();
          } else {
            viewModel.createTodo();
          }
        }
      },
    );
  }

  @override
  String get screenName => 'TodoDetailsPage';
}
