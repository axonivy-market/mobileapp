import 'package:flutter/material.dart';

class AppListTile extends ListTile {
  const AppListTile({
    super.key,
    super.contentPadding,
    super.onTap,
    super.leading,
    super.trailing,
    super.title,
    super.textColor,
    super.subtitle,
    super.minLeadingWidth,
    super.horizontalTitleGap,
    super.shape,
    super.tileColor,
  });

  @override
  Widget build(BuildContext context) {
    // ListTile Background Color Appears outside of ListView bounds
    // Preffered URL: https://github.com/flutter/flutter/issues/94261
    return ListTile(
      tileColor: tileColor,
      horizontalTitleGap: horizontalTitleGap,
      minLeadingWidth: minLeadingWidth,
      textColor: textColor,
      contentPadding: contentPadding,
      subtitle: subtitle,
      title: title,
      leading: leading,
      trailing: trailing,
      onTap: onTap,
      shape: shape,
    );
  }
}
