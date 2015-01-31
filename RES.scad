/*!
 * \file RES.scad
 * 
 * \author Copyright (C) 2010 ... 2015 by Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Function to create a 3D model of a Through Hole Resistor
 * package (\c RES).
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

COLOR_RES_BODY = [0.3, 0.3, 0.3];
COLOR_RES_LEADS = [0.77, 0.77, 0.8];

// For a 1000 Ohm RES1016-635X229 example uncomment the following line:
//RES (1000, 10.16, 6.35, 2.29, 0.8);

module RES
(
  resistance_value,
    /*!< Resistance value in Ohms. */
  pitch_x,
    /*!< pitch in X-direction. */
  package_length,
    /*!< body length of the resistor,
     * excluding the leads at the ends. */
  package_diameter,
    /*!< body diameter of the resistor. */
  lead_diameter
    /*!< diameter of the leads.*/
)
{
  bend_radius = 2 * lead_diameter;
  union()
  {
    /* Body. */
    color (COLOR_RES_BODY)
    {
      translate ([0, 0, (package_diameter / 2)])
      {
        rotate ([0, 90, 0])
        {
          cylinder
          (
            h = package_length,
            r = package_diameter / 2,
            center = true
          );
        }
      }
    }
    /* Right lead. */
    color (COLOR_RES_LEADS)
    {
      translate ([(-0.5 * (pitch_x - 2 * bend_radius)), 0, (package_diameter / 2)])
      {
        rotate ([0, 90, 0])
        {
          cylinder
          (
            h = (pitch_x - 2 * bend_radius),
            r = lead_diameter / 2,
            center = false
          );
        }
      }
    }
    /* Right lead bend. */
    color (COLOR_RES_LEADS)
    {
      translate ([0, 0, 0])
      {
        difference ()
        {
          translate ([bend_radius, 0, 0])
          {
            rotate_extrude (convexity = 10)
            {
              circle (r = lead_diameter);
            }
          }
          cube 
          (
            [4 * lead_diameter, 1 * lead_diameter, 1 * lead_diameter],
            center = false
          );
        }
        translate ([(-4 * lead_diameter), (-1 * lead_diameter), 0])
        {
          cube
          (
            [4*lead_diameter, 4*lead_diameter, 2*lead_diameter],
            center = false
          );
        } /* End of difference. */
      }
    }
    /* Left lead. */
    
    /* Right lead bend. */
    
  } /* End of union. */
}

/* EOF */
