/*!
 * \file VIA_HOLE.scad
 *
 * \author Copyright (C) 2010, 2011 by Bert Timmerman <bert.timmerman@xs4all.nl>
 *
 * \brief Functions for a via pin hole (plated).
 *
 * Invoke with orthogonal coordinates.
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
 */


include <COLORS.scad>


module VIA_HOLE
(
  x,
    /*!< X-coordinate of the center of the hole. */
  y,
    /*!< Y-coordinate of the center of the hole. */
  diameter,
    /*!< Diameter of the hole. */
  depth
    /*!< Depth of the hole. */
)
{
  translate([x, y, 0])
  {
    color (COPPER)
    cylinder(r = (diameter / 2), h = depth, center = false);
  }
}

/* EOF */
