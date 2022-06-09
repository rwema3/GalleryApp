// Copyright 2019 The Flutter team. All rights reserved.
  final Widget child;

  /// [highlightColor] is the color filled in the border when the widget
  /// is focused.
  /// Use [Colors.transparent] if you do not want one.
  /// Use an opacity less than 1 to make the underlying widget visible.
  final Color? highlightColor;

  /// [borderColor] is the color of the border when the widget is focused.
  final Color? borderColor;

  /// [hasFocus] is true when focusing on the widget is allowed.
  /// Set to false if you want the child to skip focus.
  final bool hasFocus;

  final String? debugLabel;

  @override
  State<HighlightFocus> createState() => _HighlightFocusState();
}

class _HighlightFocusState extends State<HighlightFocus> {
  late bool isFocused;

  @override
  void initState() {
    isFocused = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final highlightColor = widget.highlightColor ??
        Theme.of(context).colorScheme.primary.withOpacity(0.5);
    final borderColor =
        widget.borderColor ?? Theme.of(context).colorScheme.onPrimary;

    final highlightedDecoration = BoxDecoration(
      color: highlightColor,
      border: Border.all(
        color: borderColor,
        width: 2,
      ),
    );

    return Focus(
      canRequestFocus: widget.hasFocus,
      debugLabel: widget.debugLabel,
      onFocusChange: (newValue) {
        setState(() {
          isFocused = newValue;
        });
      },
      onKey: (node, event) {
        if (event is RawKeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.space ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.numpadEnter)) {
          widget.onPressed();
          return KeyEventResult.handled;
        } else {
          return KeyEventResult.ignored;
        }
      },
      child: Container(
        foregroundDecoration: isFocused ? highlightedDecoration : null,
        child: widget.child,
      ),
    );
  }
}
