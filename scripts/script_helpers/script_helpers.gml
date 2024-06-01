function find_nearest_task(_include_types) {
	var _min_distance = -1
	var _target = noone
	for(var _i = 0; _i < array_length(_include_types); _i++) {
		var _obj = instance_nearest(x, y, _include_types[_i])
		if (_obj == noone) {
			return noone
		}
		if (_obj.is_reserved) {
			continue
		}
		var _distance = distance_to_point(_obj.x, _obj.y)
		if (_min_distance == -1 or _min_distance > _distance) {
			_min_distance = _distance
			_target = _obj
		}
	}
	
	return _target
}