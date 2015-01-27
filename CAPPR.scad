/*!
 * \file CAPPR.scad
 * 
 * \author Copyright (C) 2010 ... 2015 by Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Function to create a 3D model of a TH Radial Polarized Capacitor package
 * (\c CAPPR).
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

COLOR_CAPPR_BODY = [0.2, 0.2, 0.2];

// For an example uncomment the following line
//CAPPR (5.08, 11.0, 16.00, 0.8, 2.1);

module CAPPR
(
  pitch_x,
    /*!< pitch in the X-direction. */
  package_diameter,
    /*!< body diameter of the capacitor. */
  package_height,
    /*!< body height of the capacitor.*/
  lead_diameter,
    /*!< diameter of the leads.*/
  lead_length
    /*!< length of the leads.*/
)
{
  union()
  {
    /* Body. */
    color (COLOR_CAPPR_BODY)
    {
      cylinder (r = package_diameter / 2, h = package_height, center = false);
    }
    /* Left lead. */
    color (LEADS)
    {
      translate ([(-pitch_x / 2), 0, -lead_length])
      {
        cylinder (r = lead_diameter / 2, h = lead_length, center = false);
      }
    }
    /* Right lead. */
    color (LEADS)
    {
      translate ([(pitch_x / 2), 0, -lead_length])
      {
        cylinder (r = lead_diameter / 2, h = lead_length, center = false);
      }
    }
  }
}

/* EOF */


