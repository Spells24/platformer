if (other.y < y - (sprite_height/2))
{
	with(other) vspd = -jumpspeed;
	instance_destroy();
}
else
{
	game_restart();
}
