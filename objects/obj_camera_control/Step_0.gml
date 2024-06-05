var _left_movement = (keyboard_check(vk_left) or keyboard_check(ord("A")))
var _right_movement = (keyboard_check(vk_right) or keyboard_check(ord("D")))
var _up_movement = (keyboard_check(vk_up) or keyboard_check(ord("W")))
var _down_movement = (keyboard_check(vk_down) or keyboard_check(ord("S")))

var _x_input = _right_movement - _left_movement
var _y_input = _down_movement - _up_movement

x += _x_input * camera_speed
y += _y_input * camera_speed