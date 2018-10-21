hspd = dir * movespeed;
vspd += grav

// horizontal collisions
if (place_meeting(x+hspd, y, obj_wall)) {
	while(!place_meeting(x+sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0
	dir *= -1;
}

// vertical collisions
if (place_meeting(x, y+vspd, obj_wall)) {
	while(!place_meeting(x, y+sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
	vspd = 0;

	// fear of falling
	if (fear_of_falling){
		show_debug_message(string(sprite_width/2))


		if (!position_meeting(x+(sprite_get_width(spr_enemy)/2), y+(sprite_height/2)+fear_of_falling, obj_wall)){
			dir *= -1;
		}
	}
}



x += hspd;
y += vspd;

if (hspd != 0) image_xscale = sign(hspd);