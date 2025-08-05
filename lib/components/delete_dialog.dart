import 'package:flutter/material.dart';

class DeleteDialog extends StatefulWidget {
  const DeleteDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onDelete,
    this.callback,
  });

  final String title;
  final String message;
  final Function() onDelete;
  final Function()? callback;

  @override
  State<DeleteDialog> createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog> {
  void handleDelete() {
    widget.onDelete();

    if (widget.callback != null) {
      widget.callback!();
    }

    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: Text(widget.message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Batal'),
        ),
        TextButton(onPressed: handleDelete, child: Text('Hapus')),
      ],
    );
  }
}
