import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringText on String {
  Text get text {
    return Text(this);
  }
}

extension NumText on num {
  Text get text {
    return toString().text;
  }

  Text textFormat([String pattern = '#,##0.##']) {
    final NumberFormat formatter = NumberFormat(pattern);
    return formatter.format(this).text;
  }
}

extension DateTimeText on DateTime {
  Text textFormat([String pattern = 'yyyy-MM-dd HH:mm:ss']) {
    final DateFormat formatter = DateFormat(pattern);
    return formatter.format(this).text;
  }
}

extension TextExtension on Text {
  Text size(double size) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(
        TextStyle(
          fontSize: size,
        ),
      ),
    );
  }

  Text color(Color color) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(
        TextStyle(
          color: color,
        ),
      ),
    );
  }

  Text maxLines(int maxLines) {
    return Text(
      data ?? '',
      maxLines: maxLines,
      style: (style ?? const TextStyle()),
    );
  }

  Text overflow(TextOverflow overflow) {
    return Text(
      data ?? '',
      overflow: this.maxLines != null ? overflow : null,
      style: (style ?? const TextStyle()),
    );
  }

  Text get bold {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(
        const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Text get italic {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(
        const TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Text get underline {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(
        const TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Text get lineThrough {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(
        const TextStyle(
          decoration: TextDecoration.lineThrough,
        ),
      ),
    );
  }

  Text get overline {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(
        const TextStyle(
          decoration: TextDecoration.overline,
        ),
      ),
    );
  }

  Text get uppercase {
    return Text(
      data?.toUpperCase() ?? '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get lowercase {
    return Text(
      data?.toLowerCase() ?? '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get capitalize {
    return Text(
      data?.split(' ').map((word) {
            return '${word[0].toUpperCase()}${word.substring(1)}';
          }).join(' ') ??
          '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get titleCase {
    return Text(
      data?.split(' ').map((word) {
            return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
          }).join(' ') ??
          '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get titleCaseAll {
    return Text(
      data?.split(' ').map((word) {
            return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
          }).join(' ') ??
          '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get titleCaseFirst {
    return Text(
      data?.split(' ').map((word) {
            return '${word[0].toUpperCase()}${word.substring(1)}';
          }).join(' ') ??
          '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get titleCaseLast {
    return Text(
      data?.split(' ').map((word) {
            return '${word[0]}${word.substring(1).toLowerCase()}';
          }).join(' ') ??
          '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get titleCaseMiddle {
    return Text(
      data?.split(' ').map((word) {
            return '${word[0].toLowerCase()}${word.substring(1).toUpperCase()}';
          }).join(' ') ??
          '',
      style: (style ?? const TextStyle()),
    );
  }

  Text get titleCaseRandom {
    return Text(
      data?.split(' ').map((word) {
            return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
          }).join(' ') ??
          '',
      style: (style ?? const TextStyle()),
    );
  }
}
