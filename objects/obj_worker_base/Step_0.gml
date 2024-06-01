// Find Task and navigate to it
if (is_working or is_waiting) {
	x = x
	y = y
	speed = 0
	return
}

var _target_instance = noone
if (target_task == noone) {
	_target_instance = find_nearest_task(compatible_tasks)
	
	if (_target_instance == noone) {
		return
	}
	
	target_task = _target_instance
	target_task.is_reserved = true
	is_moving = true
}

move_towards_point(target_task.x, target_task.y, my_speed)