import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_chart/features/instruments/models/instrument.dart';
import 'package:test_chart/resources/app_colors.dart';
import 'package:test_chart/resources/app_text_styles.dart';
import 'package:test_chart/router/app_router.dart';

class InstrumentCell extends StatelessWidget {
  const InstrumentCell({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Instrument item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        InstrumentDetailRoute(
          isin: item.isin,
        ),
      ),
      child: Container(
        color: AppColors.transparent,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: item.logoUrl,
                placeholder: (context, url) => const CircularProgressIndicator(
                  color: AppColors.green,
                ),
                errorWidget: (context, url, dynamic error) =>
                    const Icon(Icons.error),
                width: 42,
                height: 42,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.code,
                    style: AppTextStyles.b14,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.n14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
