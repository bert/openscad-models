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

/* EOF */
