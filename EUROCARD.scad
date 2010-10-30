/*!
 * \file EUROCARD.scad
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 *
 * Function to create a 3D model of a FR4 PCB Euroboard.
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
 * MA 02110-1301, USA.
 */

use <BOARD.scad>  /*! \todo Debugging */

// For an example board uncomment the following line
//EUROCARD (3, 2, 5.08);

module EUROCARD
(
        units,
        depth,
        horizontal_pitch
)
{

        U = 44.45; /* Unit. */
        D = 80; /* Minimum depth. */
        HP = 5.08; /* Horizontal Pitch. */

        width = 1;
        if (units == 3) {width = 100};
        if (units == 6) {width = 233.35};

        length = 1;
        if (depth == 0) {length = 80};
        if (depth == 1) {length = 100};
        if (depth == 2) {length = 160};
        if (depth == 3) {length = 220};
        if (depth == 4) {length = 280};
        if (depth == 5) {length = 340};
        if (depth == 6) {length = 400};
        /* Main PCB. */
        BOARD(length, width, 1.6);
        /*! \todo Connector to back plane. */
        /*! \todo Front (blind) plate (width in HP units). */
}

/* EOF */


