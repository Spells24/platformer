with(obj_player){
	jumpspeed = jumpspeed_powered;
	sprite_index = spr_player_powered;
	alarm[0] = powerup_duration;
}
instance_destroy();