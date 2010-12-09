/*!
 * \file CAPC.scad
 * 
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Function to create a 3D model of a SMT Chip Capacitor package
 * (\c CAPC).
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

// For the CAPC3216X175 example uncomment the following line
//CAPC (3.4, 1.75, 1.75, 0.8);

module CAPC
(
  package_length,
    /*!< body length of the chip capacitor,
     * including the leads at the ends. */
  package_width,
    /*!< body width of the chip capacitor. */
  package_height,
    /*!< body height of the chip capacitor.*/
  lead_length
    /*!< length of the leads.*/
)
{
  union()
  {
    /* Body. */
    color (CAPC_BODY)
    {
      cube([(package_length - (2 * lead_length)), package_width, package_height], center = true);
    }
    /* Right lead. */
    color (LEADS)
    {
      translate([(0.5 * (package_length - lead_length)), 0, 0])
      {
        cube([lead_length, package_width, package_height], center = true);
      }
    }
    /* Left lead. */
    color (LEADS)
    {
      translate([(-0.5 * (package_length - lead_length)), 0, 0])
      {
        cube([lead_length, package_width, package_height], center = true);
      }
    }
  }
}

module CAPC_LOOKUP (modelname)
{
  if (modelname = "CAPC0603X33N")
  {
    CAPC (0.63, 0.30, 0.33, 0.20);
  }
  else if (modelname = "CAPC0816X61N")
  {
    CAPC (0.96, 1.75, 0.61, 0.38);
  }
  else if (modelname = "CAPC1005X55N")
  {
    CAPC (1.05, 0.55, 0.55, 0.30);
  }
  else if (modelname = "CAPC1005X56N")
  {
    CAPC (1.10, 0.60, 0.56, 0.25);
  }
  else if (modelname = "CAPC1005X60N")
  {
    CAPC (1.10, 0.60, 0.60, 0.25);
  }
  else if (modelname = "CAPC3216X175N")
  {
    CAPC (3.40, 1.80, 1.75, 0.75);
  }
  else if ((modelname = "CAPC3216L")
        || (modelname = "CAPC3216M")
        || (modelname = "CAPC3216N"))
  {
    CAPC (3.4, 1.80, 1.75, 0.75);
  }
  else echo ("Unable to find data for the ", modelname, " package.");
}

module CAPC_PLACE
(
  modelname,
  Tx,
  Ty,
  Rz,
  side,
  value
)
{
  if (side = "top")
  {
    translate ([Tx, Ty, top])
    {
      rotate ([0, 0, Rz])
      {
        CAPC_LOOKUP (modelname);
      }
    }
  }
  if (side = "bottom")
  {
    translate ([Tx, Ty, bottom])
    {
      rotate ([0, 180, Rz])
      {
        CAPC_LOOKUP (modelname);
      }
    }
  }
}

/* EOF */


