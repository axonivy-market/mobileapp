import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppAssets.icons.priorityHigh.svg(
            colorFilter: const ColorFilter.mode(
              AppColors.watermelonade,
              BlendMode.srcIn,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Elevator Maintenance for Axon Ivy",
                style: GoogleFonts.inter(
                    fontSize: 17, fontWeight: FontWeight.w600),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    // max width,
                    width: MediaQuery.of(context).size.width - 42 - 92,
                    child: Text(
                      "Elevator #14574 at Axon Active needs to be maintained. Date:10/11/2023, Time: ",
                      style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "10.11.23",
                        style: GoogleFonts.inter(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      AppAssets.icons.chevronRight.svg()
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
