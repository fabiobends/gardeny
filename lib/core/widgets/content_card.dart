import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    required this.avatarImageUrl,
    required this.title,
    required this.plantImageUrl,
    this.shouldShowLike = true,
    this.isLiked = false,
    required this.onTapLike,
    required this.bodyTextSpan,
  });

  final String avatarImageUrl;
  final String title;
  final String plantImageUrl;
  final bool shouldShowLike;
  final bool isLiked;
  final TextSpan bodyTextSpan;
  final Function(bool isLiked) onTapLike;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: theme.colorScheme.primary, width: 1.5),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage('https://picsum.photos/100'),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plant name',
                      style: theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: AlignmentDirectional.topEnd,
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://picsum.photos/1001',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
                Positioned(
                  top: -15,
                  child: InkWell(
                    onTap: () => onTapLike(!isLiked),
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: isLiked ? theme.colorScheme.onSurface : kRed,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Plant name',
                style: theme.textTheme.bodyLarge,
                children: const [
                  TextSpan(text: ', whose scientific name is '),
                  TextSpan(
                    text: 'some name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                      text:
                          ', yada yada asdfjasdfsadf asdfdlfjalskdfjal; ksdjfklasjdf;lajsd lfjas;ldfjaslk;dfjasl;dkasdfklajsd;flakjsd;l')
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
