/*!
 * \file HOLE_POLAR.scad
 *
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 *
 * \brief Functions for a hole (polar coordinates).
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

module HOLE_POLAR
(
  distance,
    /*!< Radial distance from the origin. */
  rotation,
    /*!< Angle with the current X-axis. */
  diameter,
    /*!< Diameter of the hole. */
  depth
    /*!< Depth of the hole. */
)
{
  rotate (a = rotation, v = [1, 0, 0])
  {
    translate ([0, distance, 0])
    {
      cylinder (r = (diameter / 2), h = depth, center = true);
    }
  }
}

/* EOF */
