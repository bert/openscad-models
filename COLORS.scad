/*!
 * \file COLORS.scad
 *
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 *
 * \brief Definitions of colors and materials.
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
 * 
 * Displays the child elements using the specified RGB color + alpha
 * value.\n
 * This is only used for the OpenCSG and Thrown Together display modes.\n
 * The alpha value will default to 1.0 (opaque) if not specified.\n
 * \n
 * Usage example:\n
 * \code
 * color([r, g, b, a]) { ... }
 * \endcode
 * 
 * Note that the r, g, b, a values are limited to floating point values
 * in the range { 0.0 ... 1.0 } rather than the more traditional
 * integers { 0 ... 255 }.\n
 * However you can specify the values as fractions, e.g. for R,G,B
 * integers in {0 ... 255} you can use:\n
 * \code
 * color([ R/255, G/255, B/255 ]) { ... }
 * \endcode
 * 
 */

/* Color bands on resistors. */
BLACK = [0, 0, 0];
BROWN = [189/255, 94/255, 0];
RED = [255/255, 0, 0];
ORANGE = [255/255, 127/255, 0];
YELLOW = [255/255, 255/255, 0.0];
GREEN = [0, 255/255, 0];
BLUE = [0, 0, 255/255];
VIOLET = [255/255, 0, 255/255];
GREY = [127/255, 127/255, 127/255];
WHITE = [255/255, 255/255, 255/255];
GOLD = [0.88, 0.78, 0.5]; // Color needs further tweaking.
SILVER = [0.65, 0.67, 0.72]; // Color needs further tweaking.

/* Colors of board materials. */
FIBER_BOARD = [0.7, 0.67, 0.6];
FR4 = [0.1, 0.55, 0.1];

/* Colors of components, or parts thereof. */
LEADS = [0.77, 0.77, 0.8];
CAPC_BODY = [0.99, 0.99, 0.5];
CAPA_BODY = [0.0, 0.0, 1.0];
CAPPR_BODY = [0.2, 0.2, 0.2];
RES_BODY = [0.3, 0.3, 0.3];
RESC_BODY = [0.3, 0.3, 0.3];

/* Miscellaneous colors which might be useful. */
OAK = [0.65, 0.5, 0.4];
PINE = [0.85, 0.7, 0.45];
BIRCH = [0.9, 0.8, 0.6];
BLACK_PAINT = [0.2, 0.2, 0.2];
IRON = [0.36, 0.33, 0.33];
STEEL = [0.65, 0.67, 0.72];
STAINLESS = [0.45, 0.43, 0.5];
ALUMINUM = [0.77, 0.77, 0.8];
BRASS = [0.88, 0.78, 0.5];
TRANSPARENT = [1, 1, 1, 0.2];

/* EOF */
