import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final List<T> items;
  final T? value;
  final String hintText;
  final void Function(T?) onChanged;

  CustomDropdownButton({
    required this.items,
    required this.value,
    required this.hintText,
    required this.onChanged,
  });

  @override
  _CustomDropdownButtonState<T> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<T>(
            items: widget.items
                .map((item) => DropdownMenuItem<T>(
              value: item,
              child: Text(item.toString()),
            ))
                .toList(),
            value: widget.value,
            hint: Text(widget.hintText),
            onChanged: widget.onChanged,
          ),
        ),
      ),
    );
  }
}
