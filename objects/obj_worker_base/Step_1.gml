if (is_waiting) {
	waiting_timer -= 1
	
	if (waiting_timer <= 0) {
		is_waiting = false
		waiting_timer = 100
	}
} else if (is_working) {
	is_working = false
	is_waiting = true
}