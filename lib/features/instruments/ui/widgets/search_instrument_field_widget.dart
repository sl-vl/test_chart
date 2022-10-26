import 'package:flutter/material.dart';
import 'package:test_chart/resources/app_colors.dart';
import 'package:test_chart/resources/app_text_styles.dart';

class SearchFieldWidget extends StatefulWidget {
  const SearchFieldWidget({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final Function(String) onChanged;

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    _controller = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 36,
        child: TextField(
          cursorColor: AppColors.green,
          controller: _controller,
          focusNode: _focusNode,
          textAlignVertical: TextAlignVertical.center,
          style: AppTextStyles.b14,
          decoration: InputDecoration(
            fillColor: AppColors.lightGrey,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                Icons.search,
                color: AppColors.grey,
              ),
            ),
            prefixIconConstraints: const BoxConstraints(
              minHeight: 24,
              minWidth: 24,
            ),
            hintText: 'Search instruments',
            hintStyle: AppTextStyles.n14.grey,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.lightGrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.lightGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.lightGrey),
            ),
            filled: false,
          ),
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
