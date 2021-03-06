/*!
 * \file RESC.scad
 * 
 * \author Copyright (C) 2010 ... 2015 by Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Function to create a 3D model of a SMT Chip Resistor package
 * (\c RESC).
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

COLOR_RESC_BODY = [0.3, 0.3, 0.3];
COLOR_RESC_LEADS = [0.77, 0.77, 0.8];


// For the RESC3216X140 example uncomment the following line
//RESC (3.4, 1.75, 1.40, 0.8);

module RESC
(
        package_length,
                /*!< body length of the chip resistor,
                 * including the leads at the ends. */
        package_width,
                /*!< body width of the chip resistor. */
        package_height,
                /*!< body height of the chip resistor.*/
        lead_length
                /*!< length of the leads.*/
)
{
        union()
        {
// Body
                color (COLOR_RESC_BODY)
                cube([(package_length - (2 * lead_length)), package_width, package_height], center = true);
// Right lead
                color (COLOR_RESC_LEADS)
                translate([(0.5 * (package_length - lead_length)), 0, 0])
                        cube([lead_length, package_width, package_height], center = true);
// Left lead.
                color (COLOR_RESC_LEADS)
                translate([(-0.5 * (package_length - lead_length)), 0, 0])
                        cube([lead_length, package_width, package_height], center = true);
        }
}

/* EOF */


