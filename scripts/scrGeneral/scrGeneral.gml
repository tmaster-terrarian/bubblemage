function scrMove_Setup(_self)
{
	_self._rx = 0;
	_self._ry = 0;
}

function scrMove(_self, vx, vy)
{
	_self._rx += vx;
	_self._ry += vy;
	var mx = round(_self._rx);
	var my = round(_self._ry);
	_self._rx -= mx;
	_self._ry -= my;
	
	_self.x += mx;
	_self.y += my;
}
