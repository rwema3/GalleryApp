// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

// BEGIN fadeScaleTransitionDemo

class FadeScaleTransitionDemo extends StatefulWidget {
  const FadeScaleTransitionDemo({super.key});

  @override
     _FadeScaleTransitionDemoState();
}
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
