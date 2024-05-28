import 'package:axon_ivy/features/process/domain/entities/customfield/customfield.dart';
import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/extensions/string_ext.dart';
import 'package:axon_ivy/shared/resources/icons_helper.dart';
import 'package:axon_ivy/shared/widgets/text_highlight_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProcessItemWidget extends StatelessWidget {
  const ProcessItemWidget({
    super.key,
    required this.process,
    this.query = '',
    this.isSearchPage = false,
    this.onTap,
  });

  final Process process;
  final String query;
  final bool isSearchPage;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    int startNameIndex =
        process.name.toLowerCase().indexOf(query.toLowerCase());
    int startDescIndex =
        process.description.toLowerCase().indexOf(query.toLowerCase());
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.onPrimaryContainer,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 5, vertical: 10).r,
        visualDensity: VisualDensity(
          vertical: ScreenUtil().screenHeight > 845.0
              ? -1
              : -3, // 845 is the height of the iPhone 13. Using Device Preview to check other screens
        ),
        horizontalTitleGap: 3,
        minLeadingWidth: 0,
        minVerticalPadding: 0,
        onTap: onTap,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Theme.of(context).colorScheme.outline, width: 1),
          borderRadius: BorderRadius.circular(12).r,
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            getProcessIcon(process.customFields, context),
          ],
        ),
        title: TextHighlightWidget(
          isSearchPage: isSearchPage,
          text: process.name.isEmptyOrNull
              ? process.fullRequestPath.split('/').last
              : process.name,
          textColor: Theme.of(context).colorScheme.surface,
          startIndex: startNameIndex,
          endIndex: query.length,
          maxLine: 1,
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: TextHighlightWidget(
                isSearchPage: isSearchPage,
                text: process.description.isEmptyOrNull
                    ? 'process.noDescription'.tr()
                    : process.description,
                startIndex: startDescIndex,
                endIndex: query.length,
                maxLine: 2,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            AppAssets.icons.chevronRight.svg(
              width: 21.h,
              height: 21.h,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.surface, BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }

  Widget getProcessIcon(List<CustomField> customFields, BuildContext context) {
    final cssIcon = customFields
        .firstWhere((element) => element.name == "cssIcon",
            orElse: () => CustomField())
        .value;

    if (cssIcon.isEmpty) {
      return getIconDefaultIcon(context);
    }

    final icon = getIconUsingPrefix(name: cssIcon, context: context);

    if (icon is SvgPicture) {
      return ColorFiltered(
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.surface,
          BlendMode.srcIn,
        ),
        child: icon,
      );
    } else {
      return getIconDefaultIcon(context);
    }
  }
}
