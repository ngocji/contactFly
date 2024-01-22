import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

class ReportScreen extends StatefulWidget {
  static const String routeName = '/reportScreen';

  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Space.h50(),
              AppListTile.title(context: context,
                  title: '38 Special Featuring Night',
                  description: 'Sat, Dec 3, 2023 @ 8:30 pm',
                  prefix: Assets.icons.icBack.path),
              Space.h10(),
              EventBanner(image: Assets.icons.icEven.path,
                eventName: 'Miami Powerboat Race',
                time: 'Apr 4 | Entry @ 2:30 pm',),
              Space.h20(),
              Row(
                children: [
                  Expanded(child: CardCount(number: '834',
                    unit: 'Tickets sold',
                    colorTitle: context.color.colorSold,)),
                  Space.w5(),
                  Expanded(child: CardCount(number: '3,425',
                    unit: 'Attendees',
                    colorTitle: context.color.colorAttendee,)),
                  Space.w5(),
                  Expanded(child: CardCount(number: '759',
                    unit: 'Scanned',
                    colorTitle: context.color.colorScanned,)),
                ],
              ),
              Space.h20(),
              CardContainer(child: AppLineChart()),
              Space.h10(),
              CardContainer(child: AppPieChart(
                colorActive: Colors.blue, total: 100, value: 10,)),
              Space.h10(),
              CardContainer(child: AppBarChart(barColor: Colors.greenAccent,)),
              Space.h10(),
            ],
          ),
        ),
      ),
    );
  }
}
