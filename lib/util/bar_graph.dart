
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';

class StatsBarChart extends StatefulWidget {
  StatsBarChart({super.key});
  final Color leftBarColor = Colors.blue.shade700;
  final Color rightBarColor = Colors.blue.shade200;
  final Color avgColor = const Color(0xFF50FF7B);
  @override
  State<StatefulWidget> createState() => StatsBarChartState();
}

class StatsBarChartState extends State<StatsBarChart> {
  final double width = 25;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 12, 6);
    final barGroup2 = makeGroupData(1, 16, 10);
    final barGroup3 = makeGroupData(2, 8, 4);
    final barGroup4 = makeGroupData(3, 16, 14);
    final barGroup5 = makeGroupData(4, 19, 8);
    final barGroup6 = makeGroupData(4, 17, 9);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Palette.whiteCard,
            // color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text("Statistics",
                    style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  const SizedBox(width: 200,),
                  Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle,color:Colors.blue[700],size: 13,),
                            const SizedBox(width: 5),
                            const Text(
                              "Earnings",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Row(
                          children: [
                            Icon(Icons.circle,color:Colors.blue[400],size: 13,),
                            const SizedBox(width: 5),
                            const Text(
                              "Spendings",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Palette.backgroundGrey,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "Yearly",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.keyboard_arrow_down_sharp, size: 20),
                            ],
                          ),
                        )])],
              ),
              const SizedBox(
                height: 38,
              ),
              Expanded(flex: 1,
                child: BarChart(
                  BarChartData(
                    maxY: 20,
                    barTouchData: BarTouchData(
                      touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: Colors.grey,
                        getTooltipItem: (a, b, c, d) => null,
                      ),
                      touchCallback: (FlTouchEvent event, response) {
                        if (response == null || response.spot == null) {
                          setState(() {
                            touchedGroupIndex = -1;
                            showingBarGroups = List.of(rawBarGroups);
                          });
                          return;
                        }

                        touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                        setState(() {
                          if (!event.isInterestedForInteractions) {
                            touchedGroupIndex = -1;
                            showingBarGroups = List.of(rawBarGroups);
                            return;
                          }
                          showingBarGroups = List.of(rawBarGroups);
                          if (touchedGroupIndex != -1) {
                            var sum = 0.0;
                            for (final rod
                            in showingBarGroups[touchedGroupIndex].barRods) {
                              sum += rod.toY;
                            }
                            final avg = sum /
                                showingBarGroups[touchedGroupIndex]
                                    .barRods
                                    .length;

                            showingBarGroups[touchedGroupIndex] =
                                showingBarGroups[touchedGroupIndex].copyWith(
                                  barRods: showingBarGroups[touchedGroupIndex]
                                      .barRods
                                      .map((rod) {
                                    return rod.copyWith(
                                        toY: avg, color: widget.avgColor);
                                  }).toList(),
                                );
                          }
                        });
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: bottomTitles,
                          reservedSize: 30,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 50,
                          interval: 1,
                          getTitlesWidget: leftTitles,
                        ),
                      ),
                    ),

                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: showingBarGroups,
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        verticalInterval: 2,
                        getDrawingVerticalLine: (value) {
                          return FlLine(
                            color: Colors.grey, // Adjust color here
                            strokeWidth: 1,
                            dashArray: [5], // Adjust the array to change the dash size
                          );
                        },
                      )






                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.w400,

    );
    String text;

    // Adjust the labels to match the grid line positions (0, 4, 8, 12, 16, 20)
    if (value == 0) {
      text = '0';
    } else if (value == 5) {
      text = '\$200';
    } else if (value == 10) {
      text = '\$400';
    } else if (value == 15) {
      text = '\$600';
    } else if (value == 20) {
      text = '\$800';
    } else if (value == 25) {
      text = '\$1000';} else {
      return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: Text(text, style: style),
    );
  }



  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 6,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width,
        ),
      ],
    );
  }

}