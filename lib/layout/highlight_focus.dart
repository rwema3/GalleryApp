// Copyright 2019 The Flutter team. All rights reserved.
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
