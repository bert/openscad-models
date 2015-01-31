/*!
 * \file BGA.scad
 * 
 * \author Copyright (C) 2010 ... 2015 Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Function to create a 3D model of a SMT Ball Gate Array package
 * (\c BGA).
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

COLOR_BGA_BODY = [0.2, 0.2, 0.2];
COLOR_BGA_LEADS = [0.77, 0.77, 0.8];

/* For the BGA1284C100P36X36_3750X3750X400 example uncomment the following line.
 * The generation af vertices for all balls my take some time and memory.
 * Please adjust your settings to something like:
 * $fa = 1;
 * $fs = 0.1;
 * $fn = 36;
 */
//BGA (1284, 1.00, 36, 36, 37.50, 37.50, 4.00, 0.45);

module BGA
(
  number_of_leads,
  /*!< number of leads. */
  pitch,
  /*!< pitch of the balls. */
  number_of_columns,
  /*!< number of columns. */
  number_of_rows,
  /*!< number of rows. */
  package_body_length,
    /*!< package body length. */
  package_body_width,
    /*!< package body width. */
  package_body_height,
    /*!< package body height. */
  ball_diameter
    /*!< diameter of the ball leads. */
)
{
  /* Body. */
  color (COLOR_BGA_BODY)
  {
    translate ([(-package_body_length / 2), (-package_body_width / 2), ball_diameter])
    {
      cube ([package_body_length, package_body_width, package_body_height], center = false);
    }
  }
  /* Ball leads. */
  color (COLOR_BGA_LEADS)
  {
    for (i = [1 : number_of_rows])
    {
      for (j = [1 : number_of_columns])
      {
        translate ([((((-number_of_columns - 1) / 2) + j) * pitch), ((((-number_of_rows - 1) / 2) + i) * pitch), (0.5 * ball_diameter)])
        {
          sphere (r = ball_diameter / 2);
        }
      }
    }
  }
}

/* EOF */
