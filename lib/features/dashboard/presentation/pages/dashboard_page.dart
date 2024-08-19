import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sopos_mobile/features/dashboard/presentation/widgets/sales_overview_card.dart';
import 'package:sopos_mobile/features/dashboard/presentation/widgets/widgets.dart';
import 'package:sopos_mobile/shared/shared.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final themeMode = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: MyAppbar(
        themeMode: themeMode,
        themeNotifier: themeNotifier,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              HeightSpacer(height: 20.h),

              // Penjualan Hari Ini Section
              _buildSectionTitle(context, "Penjualan Hari Ini"),
              SalesOverviewCard(
                totalSales: 'Rp. 27.000.000',
                color: Theme.of(context).colorScheme.surface,
              ),

              // SalesOverviewWidget(),
              HeightSpacer(height: 20.h),

              // Quick Access Section
              _buildSectionTitle(context, "Akses Cepat"),
              Wrap(
                spacing: 10,
                runSpacing: 5,
                direction: Axis.horizontal,
                children: [
                  CardItemDashboard(
                    icon: Icons.point_of_sale_rounded,
                    title: "Kasir",
                    color: Theme.of(context).colorScheme.surface,
                    onTap: () => context.go("/cashier"),
                  ),
                  CardItemDashboard(
                    icon: Icons.store_mall_directory_rounded,
                    title: "Produk",
                    color: Theme.of(context).colorScheme.surface,
                    onTap: () => context.go("/product"),
                  ),
                  CardItemDashboard(
                    icon: Icons.playlist_add_check_circle,
                    title: "Report",
                    color: Theme.of(context).colorScheme.surface,
                    onTap: () => context.go("/report"),
                  ),
                  CardItemDashboard(
                    icon: Icons.settings_rounded,
                    title: "Pengaturan",
                    color: Theme.of(context).colorScheme.surface,
                    onTap: () => context.go("/more"),
                  ),
                ],
              ),
              HeightSpacer(height: 20.h),

              // Transaksi Terakhir Section
              _buildSectionTitle(context, "Transaksi Terakhir"),
              // RecentTransactionsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyNavBar(selectedIndex: 0),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
