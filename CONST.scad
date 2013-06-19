/*!
 * \file CONST.scad
 *
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 *
 * \brief Constants for math, rendering and other related stuff.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to 
 * the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor,
 * Boston,
 * MA 02110-1301, USA.\n
 * <hr>
 * Constants for rendering.\n
 * The $fa, $fs and $fn special variables control the number of facets
 * used to generate an arc:\n
 * <ul>
 * <li>$fa is the minimum angle for a fragment.\n
 * Even a huge circle does not have more fragments than 360 divided by
 * this number.\n
 * The default value is 12 (i.e. 30 fragments for a full circle).
 * <li>$fs is the minimum size of a fragment.\n
 * Because of this variable very small circles have a smaller number of
 * fragments than specified using $fa.\n
 *  The default value is 1.
 * <li>$fn is usually 0.\n
 * When this variable has a value greater than zero, the other two
 * variables are ignored and full circle is rendered using this number
 * of fragments.\n
 * The default value is 0.
 * </ul>
 * When $fa and $fs are used to determine the number of fragments for a
 * circle, then OpenSCAD will never use less than 5 fragments.\n
 * \n
 * Constants for animation.\n
 * The $t variable is used for animation.\n
 * If you enable the animation frame with view->animate and give a
 * value for "FPS" and "Steps", the "Time" field shows the current
 * value of $t.\n
 * With this information in mind, you can animate your design.\n
 * The design is recompiled every 1/"FPS" seconds with $t incremented
 * by 1/"Steps" for "Steps" times.
 */

$fa = 1;
    /*!< Minimum angle for a fragment. */
$fs = 0.1;
    /*!< Minimum size for a fragment. */
$fn = 36;
    /*!< Number of fragments used for a full circle. */
$t = 0.01;
    /*!< Time slice.*/

/* Constants for math. */
TAU = 6.2831853071;
    /*!< Tau = 2 * Pi, see http://tauday.com/ */
PI = TAU / 2;
    /*!< Pi. */

/* Translate Imperial measurements to Metrical measurements. */
INCH = 25.4;
    /*!< 25.4 mm to an inch. */
MIL = INCH / 1000;
    /*!< 1000 mils to an inch. */
MIL100 = MIL / 100;
    /*!< mil/100 as used in gEDA/PCB. */

/* Some Printed Circuit Board related defaults. */
DEFAULT_BOARD_THICKNESS = 1.6;
    /*!< Default printed circuit board thickness = 1.6 mm. */
DEFAULT_COPPER_THICKNESS = 0.035;
    /*!< Default copper trace thickness on a pcb = 0.0035 mm = 35 um. */

/* Some math constants. */
M_E = 2.71828182845904523536;
        /*!< The base of natural logarithms. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_LOG2E = 1.44269504088896340736;
        /*!< The logarithm to base 2 of M_E. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_LOG10E = 0.434294481903251827651;
        /*!< The logarithm to base 10 of M_E. \n
         *From math.h. \n
         * Constant rounded for 21 decimals. */
M_LN2 = 0.693147180559945309417;
        /*!< The natural logarithm of 2. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_LN10 = 2.30258509299404568402;
        /*!< The natural logarithm of 10. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_PI = 3.14159265358979323846;
        /*!< Pi, the ratio of a circle's circumference to its diameter. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_PI_2 = 1.57079632679489661923;
        /*!< Pi divided by two. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_PI_4 = 0.785398163397448309616;
        /*!< Pi divided by four. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_1_PI = 0.318309886183790671538;
        /*!< The reciprocal of pi (1/pi). \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_2_PI = 0.636619772367581343076;
        /*!< Two times the reciprocal of pi. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_1_SQRTPI = 0.564189583547756286948;
        /*!< The reciprocal of the square root of pi. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_2_SQRTPI = 1.12837916709551257390;
        /*!< Two times the reciprocal of the square root of pi. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_SQRT2 = 1.41421356237309504880;
        /*!< The square root of two. \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */
M_SQRT1_2 = 0.707106781186547524401;
        /*!< The reciprocal of the square root of two
         * (also the square root of 1/2). \n
         * From math.h. \n
         * Constant rounded for 21 decimals. */

/* EOF */
