if(other.team != self.team)
{
    other.hp -= self.damage;
    instance_destroy(self);
}
