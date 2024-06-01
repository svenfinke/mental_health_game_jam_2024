if (instance_place(x,y,target_task) != noone) {
	is_moving = false
	is_working = true
	instance_destroy(target_task)
	target_task = noone
}