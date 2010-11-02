/*!
 * \file WIRE_BEND.scad
 *
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 *
 * \brief Functions for a bend in a wire.
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

module WIRE_BEND
(
  wire_diameter,
    /*!< Diameter of the wire. */
  bend_radius
    /*!< Radius of the bend, measured at the centerline of the wire. */
)
{
  difference ()
  {
    difference ()
    {
      /* Create a toroid. */
      rotate_extrude (convexity = 10)
      {
        translate ([bend_radius, 0, 0])
        {
          circle (r = wire_diameter);
        }
      }
      /* Remove a quarter of the toroid. */
      cube ([4 * wire_diameter, 4 * wire_diameter, 2 * wire_diameter], center = false);
    } /* End of difference. */
    /* Remove a half of the toroid. */
    translate ([(-0.5 * bend_radius * wire_diameter), (-4 * wire_diameter), 0])
    {
      cube ([4 * wire_diameter, 4 * wire_diameter, 2 * wire_diameter], center = false);
    }
  } /* End of difference. */
}

/* EOF */
