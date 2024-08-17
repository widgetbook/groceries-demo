// TODO maybe delete 

// import 'package:flutter/material.dart';

// import '../ui.dart';

// class ResponsiveLayout extends StatelessWidget {
//   const ResponsiveLayout({
//     super.key,
//     this.headline,
//     required this.content,
//     this.footer,
//   });

//   final String? headline;
//   final Widget content;
//   final Widget? footer;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(AppTheme.of(context).spacing.medium),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (headline != null)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   headline!,
//                   style: AppTheme.of(context).typography.displayRegular32,
//                 ),
//                 SizedBox(height: AppTheme.of(context).spacing.large),
//               ],
//             ),
//           Expanded(child: content),
//           if (footer != null)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: AppTheme.of(context).spacing.large),
//                 footer!,
//               ],
//             ),
//         ],
//       ),
//     );
//   }
// }
