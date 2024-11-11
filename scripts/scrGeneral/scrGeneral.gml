function scrMove_Setup(_self)
{
    _self._rx = 0;
    _self._ry = 0;
}

function scrMove(_self, _vx, _vy)
{
    _self._rx += _vx;
    _self._ry += _vy;
    var mx = round(_self._rx);
    var my = round(_self._ry);
    _self._rx -= mx;
    _self._ry -= my;

    _self.x += mx;
    _self.y += my;
}

function scrSineWave_Setup(_self)
{
    _self._sineStartX = _self.x;
    _self._sineStartY = _self.y;
    _self._sineTimer = 0;
}

function scrSineWave(_self, _freq, _mag, _vel, _dir)
{
    _self.x = round(_self._sineStartX + lengthdir_x(sin(pi*_freq)*_mag, _dir + 90) + lengthdir_x(_self._sineTimer, _dir));
    _self.y = round(_self._sineStartY + lengthdir_y(sin(pi*_freq)*_mag, _dir + 90) + lengthdir_y(_self._sineTimer, _dir));

    _self._sineTimer += _vel;
}
