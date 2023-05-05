/// @description Shoot

var bullet = instance_create_layer(x, y, "Bullets", oPlayerBullet)
bullet.speed = bullet_speed
bullet.direction = direction
bullet.image_angle = direction
bullet.damage = bullet_damage

alarm[1] = shooting_interval