
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_isAnimationRunningForwardsOrComplete) {
                      _controller.reverse();
                    } else {
                      _controller.forward();
                    }
                  },
                  child: Text(
                    _isAnimationRunningForwardsOrComplete
                        ? localizations.demoFadeScaleHideFabButton
                        : localizations.demoFadeScaleShowFabButton,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExampleAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = GalleryLocalizations.of(context)!;

    return AlertDialog(
      content: Text(localizations.demoFadeScaleAlertDialogHeader),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(localizations.demoFadeScaleAlertDialogCancelButton),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(localizations.demoFadeScaleAlertDialogDiscardButton),
        ),
      ],
    );
  }
}

// END fadeScaleTransitionDemo
