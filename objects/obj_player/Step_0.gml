left_key = keyboard_check(vk_left);
right_key = keyboard_check(vk_right);
jump_key = keyboard_check_pressed(vk_space);

mdirection = -left_key + right_key;

hspd = movespeed * mdirection;

if (vspd < 10) vspd += grav;

if (place_meeting(x,y+1,obj_wall)) vspd = jump_key * -jumpspeed;

// horizontal collisions
if (place_meeting(x+hspd, y, obj_wall)) 
{
	while(!place_meeting(x+sign(hspd), y, obj_wall))
	{
		x += sign(hspd);
	}
	hspd = 0
}

// vertical collisions
if (place_meeting(x, y+vspd, obj_wall)) 
{
	while(!place_meeting(x, y+sign(vspd), obj_wall))
	{
		y += sign(vspd);
	}
	vspd = 0;
}

x += hspd;
y += vspd;

if (hspd != 0) image_xscale = sign(hspd);