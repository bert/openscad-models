/*!
 * \file BOARD.scad
 * 
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Function to create a 3D model of a FR4 PCB board.
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

include <COLORS.scad>
include <CONST.scad>

// For an example board uncomment one of the following lines
//BOARD (66.040, 22.4, 1.6);
BOARD (160.0, 100.0, 1.6);

module BOARD
(
  length,
    /*!< length of the printed circuit board. */
  width,
    /*!< width of the printed circuit board. */
  thickness,
    /*!< thickness of the printed circuit board.*/
)
{
  color (FR4)
  {
    cube([length, width, thickness], center = false);
  }
  /*! \todo We need to apply solder resist on both sides. */
}

/* EOF */


