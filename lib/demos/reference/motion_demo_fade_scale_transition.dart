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

            Navigator.of(context).pop();
          },
          child: Text(localizations.demoFadeScaleAlertDialogDiscardButton),
        ),
      ],
    );
  }
}

// END fadeScaleTransitionDemo
