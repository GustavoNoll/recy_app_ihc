import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/common/page.dart';
import 'package:gustavo_s_application2/screens/rewards/reward_component.dart';

class TagSelection {
  String label;
  bool selected;

  TagSelection(this.label, this.selected);
}

class TagBar extends StatefulWidget {
  List<TagSelection> tags;
  void Function(TagSelection tag)? onChange;

  TagBar({required this.tags, this.onChange});

  @override
  State<StatefulWidget> createState() {
    return TagBarState(tags, onChange);
  }
}

class TagBarState extends State<TagBar> {
  List<TagSelection> tags;
  void Function(TagSelection tag)? onChange;

  TagBarState(this.tags, this.onChange);

  @override
  Widget build(BuildContext context) {
    // tags.sort((a, b) {return (a.selected == b.selected) ? 0 : ((a.selected) ? -1 : 1);});
    return Wrap(
      spacing: 5,
      children: tags.map((tag) => FilterChip(
          label: Text(tag.label),
          selected: tag.selected,
          selectedColor: Colors.blue,
          showCheckmark: false,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onSelected: (selected) {
            setState(() {
              tag.selected = selected;
              if (onChange != null)
                onChange!(tag);
            });
          }
      )).toList(growable: false),
    );
  }
}
