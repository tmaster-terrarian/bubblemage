image_xscale = facing;

scrMove(self, self.velocityX, self.velocityY);

self.camTargetX = (self.x - self.camTargetX) * 0.25;
self.camTargetY = (self.y - self.camTargetY) * 0.25;

camera_set_view_pos(view_camera[0], self.x - SCREEN_WIDTH / 2, self.y - SCREEN_HEIGHT / 2);
