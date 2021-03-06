/// irandom_event_range(min, max)
/// Get an random even number within the specified range
/// @param min
/// @param max

//-----------------------------------------------------------------------------

var _min = argument0;
var _max = argument1;

//-----------------------------------------------------------------------------

//if the _min is an odd number then shrink the range so that we enforce the parity of the return value
if ((_min % 2) == 1) _min++;
return _min + irandom((_max - _min) / 2) * 2;

