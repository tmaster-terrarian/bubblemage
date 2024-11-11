if(self.gamepadMode && (keyboard_lastkey != vk_nokey || mouse_lastbutton != mb_none))
    self.gamepadMode = false;

if(!self.gamepadMode && gamepad_button(0) != -1)
    self.gamepadMode = true;

var _inputShoot = INPUT_SHOOT;

var _inputX = INPUT_MOVEX_RAW;
var _inputY = INPUT_MOVEY_RAW;

var _inputDist = clamp(point_distance(0, 0, _inputX, _inputY), 0, 1);
var _inputDir = point_direction(0, 0, _inputX, _inputY);
self.inputX = lengthdir_x(_inputDist, _inputDir);
self.inputY = lengthdir_y(_inputDist, _inputDir);

// move

if(sign(self.inputX) != 0)
{
    if(self.velocityX * sign(self.inputX) < 0)
        self.velocityX = approach(self.velocityX, 0, self.fric);

    if(abs(self.velocityX) < abs(self.baseSpeed * self.inputX))
        self.velocityX = approach(self.velocityX, self.baseSpeed * self.inputX, self.accel);
}
else
{
    self.velocityX = approach(self.velocityX, 0, self.fric * 2);
}

if(sign(self.inputY) != 0)
{
    if(self.velocityY * sign(self.inputY) < 0)
        self.velocityY = approach(self.velocityY, 0, self.fric);

    if(abs(self.velocityY) < abs(self.baseSpeed * self.inputY))
        self.velocityY = approach(self.velocityY, self.baseSpeed * self.inputY, self.accel);
}
else
{
    self.velocityY = approach(self.velocityY, 0, self.fric * 2);
}

if(sign(self.inputX) != 0 || sign(self.inputY) != 0)
{
    self.sprite_index = spr_player_run;
    self.image_index += _inputDist/5;
}
else
{
    self.sprite_index = spr_player;
    self.image_index = 0;
}


// aim

if(self.gamepadMode)
    self.aimDirection = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axislh));
else
    self.aimDirection = point_direction(self.x, self.y, mouse_x, mouse_y);

if(self.aimDirection < 90 || self.aimDirection > 270)
    self.facing = 1;
else
    self.facing = -1;


// shoot

if(self.bulletCooldown > 0)
    self.bulletCooldown--;
if(self.bulletCooldown == 0 && INPUT_SHOOT)
{
    self.bulletCooldown = self.bulletType.castTime;

    var _bullet = self.bulletType.CreateInstance(x, y, depth + 2);
    _bullet.dir = self.aimDirection;
}
