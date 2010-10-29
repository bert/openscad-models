/*!
 * \file CAPC.scad
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
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

// For an example uncomment the following line
//CAPC (3.2, 1.6, 1.6, 0.4);

// Material colors
Leads = [0.77, 0.77, 0.8];
Body = [0.99, 0.99, 0.5];

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
// Body
                color (Body)
                cube([(package_length - (2 * lead_length)), package_width, package_height], center = true);
// Right lead
                color (Leads)
                translate([(0.5 * (package_length - lead_length)), 0, 0])
                        cube([lead_length, package_width, package_height], center = true);
// Left lead.
                color (Leads)
                translate([(-0.5 * (package_length - lead_length)), 0, 0])
                        cube([lead_length, package_width, package_height], center = true);
        }
}

/* EOF */


