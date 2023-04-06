import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';
import 'description_rich_text.dart';

class CardBase extends StatelessWidget {
  const CardBase({
    super.key,
    required this.body,
    required this.footer,
    required this.avatarImageUrl,
    required this.title,
  });

  final String avatarImageUrl;
  final String title;
  final Widget body;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      color: colorScheme.surface,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardHeader(avatarImageUrl: avatarImageUrl, title: title),
            body,
            const SizedBox(height: 15),
            footer,
          ],
        ),
      ),
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({
    super.key,
    required this.avatarImageUrl,
    required this.title,
  });

  final String avatarImageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: theme.colorScheme.primary,
              width: 1.5,
            ),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(avatarImageUrl),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}

class CardHero extends StatelessWidget {
  const CardHero({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        height: 200,
        width: double.infinity,
      ),
    );
  }
}

class CardHeroWithToggleIcon extends StatefulWidget {
  const CardHeroWithToggleIcon({
    super.key,
    required this.imageUrl,
    required this.onTapIcon,
    required this.iconData,
    this.isIconActive = true,
    required this.iconActiveColor,
  });

  final String imageUrl;
  final Function(bool) onTapIcon;
  final IconData iconData;
  final bool isIconActive;
  final Color iconActiveColor;

  @override
  State<CardHeroWithToggleIcon> createState() => _CardHeroWithToggleIconState();
}

class _CardHeroWithToggleIconState extends State<CardHeroWithToggleIcon> {
  late bool isActive;

  @override
  void initState() {
    isActive = widget.isIconActive;
    super.initState();
  }

  void onTap() {
    widget.onTapIcon(isActive);
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      clipBehavior: Clip.none,
      children: [
        CardHero(imageUrl: widget.imageUrl),
        InkWell(
          onTap: onTap,
          child: Icon(
            widget.iconData,
            color: isActive ? widget.iconActiveColor : colorScheme.onSurface,
            size: 30,
          ),
        ),
      ],
    );
  }
}

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    required this.avatarImageUrl,
    required this.title,
    required this.heroImageUrl,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    this.iconState,
  });

  final String avatarImageUrl;
  final String title;
  final String heroImageUrl;
  final String firstText;
  final String secondText;
  final String thirdText;
  final IconState? iconState;

  @override
  Widget build(BuildContext context) {
    return CardBase(
      avatarImageUrl: avatarImageUrl,
      title: title,
      body: iconState != null
          ? CardHeroWithToggleIcon(
              imageUrl: heroImageUrl,
              iconActiveColor: iconState!.iconActiveColor,
              iconData: iconState!.iconData,
              onTapIcon: iconState!.onTapIcon,
              isIconActive: iconState!.isIconActive,
            )
          : CardHero(imageUrl: heroImageUrl),
      footer: DescriptionRichText(
        firstText: firstText,
        secondText: secondText,
        thirdText: thirdText,
        maxLines: 2,
        shouldShowEllipsis: true,
      ),
    );
  }
}

class IconState {
  final Color iconActiveColor;
  final IconData iconData;
  final Function(bool) onTapIcon;
  final bool isIconActive;

  IconState({
    required this.iconActiveColor,
    required this.iconData,
    required this.onTapIcon,
    required this.isIconActive,
  });
}

class LikeIconState extends IconState {
  LikeIconState({
    required onTapLike,
    required isLiked,
  }) : super(
          iconData: FontAwesomeIcons.solidHeart,
          iconActiveColor: kRed,
          isIconActive: isLiked,
          onTapIcon: onTapLike,
        );
}
