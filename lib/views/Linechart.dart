import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Linechart extends StatelessWidget {
  Linechart({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(9.0, 0.0),
          child: Container(
            width: 345.0,
            height: 298.0,
            decoration: BoxDecoration(),
          ),
        ),
        Transform.translate(
          offset: Offset(-7.0, 289.67),
          child: SizedBox(
            width: 88.0,
            child: Text(
              '               Unidad I',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(115.0, 289.67),
          child: SizedBox(
            width: 48.0,
            child: Text(
              'Unidad II',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(216.0, 289.67),
          child: SizedBox(
            width: 50.0,
            child: Text(
              'Unidad III',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(303.0, 289.67),
          child: SizedBox(
            width: 50.0,
            child: Text(
              'Unidad IV',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 274.67),
          child: SizedBox(
            width: 18.0,
            height: 13.0,
            child: Text(
              '0',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 219.67),
          child: SizedBox(
            width: 18.0,
            height: 13.0,
            child: Text(
              '20',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 164.67),
          child: SizedBox(
            width: 18.0,
            height: 13.0,
            child: Text(
              '40',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 110.67),
          child: SizedBox(
            width: 18.0,
            height: 13.0,
            child: Text(
              '60',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 55.67),
          child: SizedBox(
            width: 18.0,
            height: 13.0,
            child: Text(
              '80',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 1.67),
          child: SizedBox(
            width: 18.0,
            height: 13.0,
            child: Text(
              '100',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffa3a3a3),
                height: 1,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(37.0, 5.0),
          child:
              // Adobe XD layer: 'Grid_v_1' (shape)
              SvgPicture.string(
            _svg_v0eg01,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(33.0, 14.0),
          child:
              // Adobe XD layer: 'Dot_11' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xffa6cee3),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(84.0, 265.0),
          child:
              // Adobe XD layer: 'Dot_12' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xffa6cee3),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(135.0, 252.0),
          child:
              // Adobe XD layer: 'Dot_13' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xffa6cee3),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(186.0, 11.0),
          child:
              // Adobe XD layer: 'Dot_14' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xffa6cee3),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(237.0, 181.0),
          child:
              // Adobe XD layer: 'Dot_15' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xffa6cee3),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(288.0, 203.0),
          child:
              // Adobe XD layer: 'Dot_16' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xffa6cee3),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(339.0, 17.0),
          child:
              // Adobe XD layer: 'Dot_17' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xffa6cee3),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(37.0, 75.0),
          child:
              // Adobe XD layer: 'Line_2' (shape)
              SvgPicture.string(
            _svg_u7bdp,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(33.0, 192.0),
          child:
              // Adobe XD layer: 'Dot_21' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xff1f78b4),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(84.0, 164.0),
          child:
              // Adobe XD layer: 'Dot_22' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xff1f78b4),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(135.0, 110.0),
          child:
              // Adobe XD layer: 'Dot_23' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xff1f78b4),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(186.0, 156.0),
          child:
              // Adobe XD layer: 'Dot_24' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xff1f78b4),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(237.0, 219.0),
          child:
              // Adobe XD layer: 'Dot_25' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xff1f78b4),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(288.0, 71.0),
          child:
              // Adobe XD layer: 'Dot_26' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xff1f78b4),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(339.0, 118.0),
          child:
              // Adobe XD layer: 'Dot_27' (shape)
              Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
              color: const Color(0xff1f78b4),
              border: Border.all(width: 1.0, color: const Color(0x00000000)),
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_v0eg01 =
    '<svg viewBox="37.0 5.0 307.0 273.0" ><path transform="translate(-7.0, -344.0)" d="M 44 349 L 44 622" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 146 349 L 146 622" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 248 349 L 248 622" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 351 349 L 351 622" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 44 622 L 350 622" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 44 567 L 350 567" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 44 512 L 350 512" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 44 458 L 350 458" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 44 403 L 350 403" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 44 349 L 350 349" fill="none" stroke="#f0f0f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.0, -344.0)" d="M 44 362 C 44 362 69 613 95 613 C 120 613 120 600 146 600 C 171 600 171 359 197 359 C 222 359 222 529 248 529 C 273 529 273 551 299 551 C 324 551 350 365 350 365" fill="none" stroke="#a6cee3" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u7bdp =
    '<svg viewBox="37.0 75.0 306.0 148.0" ><path transform="translate(-7.0, -344.0)" d="M 44 540 C 44 540 69 512 95 512 C 120 512 120 458 146 458 C 171 458 171 504 197 504 C 222 504 222 567 248 567 C 273 567 273 419 299 419 C 324 419 350 466 350 466" fill="none" stroke="#1f78b4" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
