

//the map
map[0]  = "1111111111111111111111111111111111111111111111111111111111111111";
map[1]  = "1666666666666666666666666166666611111111111111111111111111111111";
map[2]  = "1666666666666666666666666166666611111111111111111111111111111111";
map[3]  = "1666666666666666666666666166666611111111111111111111111111111111";
map[4]  = "1666666666666666666666666666666611111111111111111111111111111111";
map[5]  = "1666666666666666666666666166666611111111111111111111111111111111";
map[6]  = "1666666666666666666666666166666611111111111111111111111111111111";
map[7]  = "1666666666666666666666666166666611111111111111111111111111111111";
map[8]  = "1111111111111111111111111111111111111111111111111111111111111111";
map[9]  = "1111111111111111111111111111111111111111111111111111111111111111";
map[10] = "1111111111111111111111111111111111111111111111111111111111111111";
map[11] = "1111111111111111111111111111111111111111111111111111111111111111";
map[12] = "1111111111111111111111111111111111111111111111111111111111111111";
map[13] = "1111111111111111111111111111111111111111111111111111111111111111";
map[14] = "1111111111111111111111111111111111111111111111111111111111111111";
map[15] = "1111111111111111111111111111111111111111111111111111111111111111";
map[16] = "1111111111111111111111111111111111111111111111111111111111111111";
map[17] = "1111111111111111111111111111111111111111111111111111111111111111";
map[18] = "1111111111111111111111111111111111111111111111111111111111111111";
map[19] = "1111111111111111111111111111111111111111111111111111111111111111";
map[20] = "1111111111111111111111111111111111111111111111111111111111111111";
map[21] = "1111111111111111111111111111111111111111111111111111111111111111";
map[22] = "1111111111111111111111111111111111111111111111111111111111111111";
map[23] = "1111111111111111111111111111111111111111111111111111111111111111";
map[24] = "1111111111111111111111111111111111111111111111111111111111111111";
map[25] = "1111111111111111111111111111111111111111111111111111111111111111";
map[26] = "1111111111111111111111111111111111111111111111111111111111111111";
map[27] = "1111111111111111111111111111111111111111111111111111111111111111";
map[28] = "1111111111111111111111111111111111111111111111111111111111111111";
map[29] = "1111111111111111111111111111111111111111111111111111111111111111";
map[30] = "1111111111111111111111111111111111111111111111111111111111111111";
map[31] = "1111111111111111111111111111111111111111111111111111111111111111";
map[32] = "1111111111111111111111111111111111111111111111111111111111111111";
map[33] = "1111111111111111111111111111111111111111111111111111111111111111";
map[34] = "1111111111111111111111111111111111111111111111111111111111111111";
map[35] = "1111111111111111111111111111111111111111111111111111111111111111";
map[36] = "1111111111111111111111111111111111111111111111111111111111111111";
map[37] = "1111111111111111111111111111111111111111111111111111111111111111";
map[38] = "1111111111111111111111111111111111111111111111111111111111111111";
map[39] = "1111111111111111111111111111111111111111111111111111111111111111";
map[40] = "1111111111111111111111111111111111111111111111111111111111111111";
map[41] = "1111111111111111111111111111111111111111111111111111111111111111";
map[42] = "1111111111111111111111111111111111111111111111111111111111111111";
map[43] = "1111111111111111111111111111111111111111111111111111111111111111";
map[44] = "1111111111111111111111111111111111111111111111111111111111111111";
map[45] = "1111111111111111111111111111111111111111111111111111111111111111";
map[46] = "1111111111111111111111111111111111111111111111111111111111111111";
map[47] = "1111111111111111111111111111111111111111111111111111111111111111";
map[48] = "1111111111111111111111111111111111111111111111111111111111111111";
map[49] = "1111111111111111111111111111111111111111111111111111111111111111";
map[50] = "1111111111111111111111111111111111111111111111111111111111111111";
map[51] = "1111111111111111111111111111111111111111111111111111111111111111";
map[52] = "1111111111111111111111111111111111111111111111111111111111111111";
map[53] = "1111111111111111111111111111111111111111111111111111111111111111";
map[54] = "1111111111111111111111111111111111111111111111111111111111111111";
map[55] = "1111111111111111111111111111111111111111111111111111111111111111";
map[56] = "1111111111111111111111111111111111111111111111111111111111111111";
map[57] = "1111111111111111111111111111111111111111111111111111111111111111";
map[58] = "1111111111111111111111111111111111111111111111111111111111111111";
map[59] = "1111111111111111111111111111111111111111111111111111111111111111";
map[60] = "1111111111111111111111111111111111111111111111111111111111111111";
map[61] = "1111111111111111111111111111111111111111111111111111111111111111";
map[62] = "1111111111111111111111111111111111111111111111111111111111111111";
map[63] = "1111111111111111111111111111111111111111111111111111111111111111";


//convert it into a grid
var _world = ds_grid_create(63, 63);

for (var i = 0; i < 64; i++) {
	for (var j = 1; j <= 64; j++) {
		ds_grid_add(_world, j - 1, i, real(string_char_at(map[i], j)));
	}	
}

//-----------------------------------------------------------------------------

//return the basic world data - this will form the basis of the world layout
return _world;


