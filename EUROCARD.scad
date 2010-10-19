/*!
 * \file EUROCARD.scad
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
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


use <BOARD.scad>


module EUROCARD
(
        units,
        depth,
        horizontal_pitch
)
        U = 44.45; /* Unit. */
        D = 80; /* Minimum depth. */
        HP = 5.08; /* Horizontal Pitch. */

        if (units == 3) width = 100;
        else if (units == 6) width = 233.35;
        else width = 1;

        if (depth == 0) length = 80;
        else if (depth == 1) length = 100;
        else if (depth == 2) length = 160;
        else if (depth == 3) length = 220;
        else if (depth == 4) length = 280;
        else if (depth == 5) length = 340;
        else if (depth == 6) length = 400;
        else length = 1;
        /* Main PCB. */
        BOARD(length, width, 1.6);
        /*! \todo Connector to back plane. */
        /*! \todo Front (blind) plate (width in HP units). */
}


/* EOF */


