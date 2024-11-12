
import 'package:flutter/material.dart';

import '../constants/color_resources.dart';


class ButtonStyles {

  //* ================== |> Button Style Based On Theme <| ==================  */
  static ButtonStyle getThemeStyle(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        ColorRes.red,
      ),
      foregroundColor: WidgetStateProperty.all(Colors.white),
    );
  }

  //* ================== |> Button Style Based on Customization <| ==================  */
  static ButtonStyle getCommonStyle(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
       Theme.of(context).primaryColor,
      ),
      foregroundColor: WidgetStateProperty.all(Colors.white),
    );
  }

      static ButtonStyle getGreyStyle(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
       Theme.of(context).primaryColor,
      ),
      foregroundColor: WidgetStateProperty.all(Colors.white),
    );
  }
}
