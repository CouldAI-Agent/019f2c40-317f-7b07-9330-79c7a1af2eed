import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistics'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Card(
            child: ListTile(
              leading: Icon(Icons.timer),
              title: Text('Total Focus Time'),
              trailing: Text('12h 30m'),
            ),
          ),
          const SizedBox(height: 8),
          const Card(
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Tasks Completed'),
              trailing: Text('24'),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'This Week',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          _buildBarChart(context),
        ],
      ),
    );
  }

  Widget _buildBarChart(BuildContext context) {
    // A simple placeholder for a bar chart
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildBar(context, 0.4, 'M'),
          _buildBar(context, 0.7, 'T'),
          _buildBar(context, 0.9, 'W'),
          _buildBar(context, 0.3, 'T'),
          _buildBar(context, 0.6, 'F'),
          _buildBar(context, 0.2, 'S'),
          _buildBar(context, 0.5, 'S'),
        ],
      ),
    );
  }

  Widget _buildBar(BuildContext context, double heightRatio, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 20,
          height: 120 * heightRatio,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
