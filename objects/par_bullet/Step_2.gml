scrMove(self, self.velocityX, self.velocityY);

if(self.timeLeft == 0)
    instance_destroy(self);
if(self.timeLeft > 0)
    self.timeLeft--;
