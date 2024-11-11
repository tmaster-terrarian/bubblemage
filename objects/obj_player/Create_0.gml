event_inherited();

self.image_speed = 0;

self.facing = 1;

self.aimDirection = 0;

self.baseSpeed = 2;
self.accel = 0.1;
self.fric = 0.14;

self.inputX = 0;
self.inputY = 0;
self.velocityX = 0;
self.velocityY = 0;

self.camTargetX = self.x;
self.camTargetY = self.y;

self.gamepadMode = false;

self.bulletType = global.bulletTypes[$"player"];
self.bulletCooldown = 0;
// self.bulletCooldown = bulletType.castTime;
