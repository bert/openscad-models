/*!
 * \file HDR.scad
 * 
 * \author Copyright (C) 2015 by Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Function to create a 3D model of a Through Hole Male Header
 * package (\c HDR).
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

COLOR_HDR_BODY = [0.0, 0.0, 0.0];
COLOR_HDR_LEADS = [0.88, 0.78, 0.5];

/* For a 5x2 header example uncomment the following line: */
//HDR (2.54, 2.54, 5, 2, 2.3, 0.65, 11.5);

module HDR
(
  pitch_x,
  pitch_y,
  columns,
  rows,
  body_height,
  lead_thickness,
  lead_height
)
{
  translate ([x, y, z])
  {
    rotate (angle)
    {
      union ()
      {
        for (i = [1 : columns])
        {
          for (j = [1 : rows])
          {
            translate ([((((-columns - 1) * 0.5) * pitch_x) + (i * pitch_x)),
              ((((-rows - 1) * 0.5) * pitch_y) + (j * pitch_y)), ((0.5 * body_height) + DEFAULT_BOARD_THICKNESS)])
            {
              color (COLOR_HDR_LEADS) cube (size = [lead_thickness, lead_thickness, lead_height], center = true);
              translate ([0, 0, -DEFAULT_BOARD_THICKNESS])
              {
                color (COLOR_HDR_BODY) cube (size = [pitch_x, pitch_y, body_height], center = true);
              }
            }
          } /* End of for-loop [j]. */
        } /* End of for-loop [i]. */
      } /* End of union. */
    } /* End of rotate. */
  } /* End of translate. */
} /* End of module. */

/* EOF */
