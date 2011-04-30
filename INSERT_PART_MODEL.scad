/*!
 * \file INSERT.scad
 * 
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 *
 * \brief .
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

include <PACKAGES.scad>

top = 1.5 * thickness;
bottom = -0.5 * thickness;

function INSERT_PART_MODEL
(
  package_type,
  modelname,
  Tx,
  Ty,
  Rz,
  side,
  value
)
{
  /* If the user has defined a ${description}.scad file somewhere and
   * wants to use that part, so use it in the model. */
  if (package_type == "USER_LIB")
  {
    if (side = "top")
    {
      translate ([Tx, Ty, top])
      {
        rotate ([0, 0, Rz])
        {
          modelname;
        }
      }
    }
    if (side = "bottom")
    {
      translate ([Tx, Ty, bottom])
      {
        rotate ([0, 180, Rz])
        {
          modelname;
        }
      }
    }
  }
  /* If the user has required a ${description}.scad file form the pcb
   * library and wants to use that part, so use it in the model. */
  else if (package_type == "PCB_LIB")
  {
    if (side = "top")
    {
      translate ([Tx, Ty, top])
      {
        rotate ([0, 0, Rz])
        {
          modelname;
        }
      }
    }
    if (side = "bottom")
    {
      translate ([Tx, Ty, bottom])
      {
        rotate ([0, 180, Rz])
        {
          modelname;
        }
      }
    }
  }
  /* Package types according a well known naming convention. */
  else if (package_type == "CAPC" && !CAPC_SCAD_INCLUDED)
  {
    /* Package type with a well known naming convention. */
    include <CAPC.scad>
    CAPC_SCAD_INCLUDED = 1;
    CAPC_PLACE (modelname, Tx, Ty, Rz, side, value);
  }
  else if (package_type == "RESC" && !RESC_SCAD_INCLUDED)
  {
    include <RESC.scad>
    RESC_SCAD_INCLUDED = 1;
    RESC_PLACE (modelname, Tx, Ty, Rz, side, value);
  }

/* EOF */


