function scr_getinput()
{
	key_up = false;
	key_up2 = false;
	key_right = false;
	key_right2 = false;
	key_left = false;
	key_left2 = false;
	key_down = false;
	key_down2 = false;
	key_jump = false;
	key_jump2 = false;
	key_slap = false;
	key_slap2 = false;
	key_taunt = false;
	key_taunt2 = false;
	key_attack = false;
	key_attack2 = false;
	key_shoot = false;
	key_shoot2 = false;
	key_start = false;
	key_start2 = false;
	key_escape = false;
	stickpressed = false;
	if global.shellactivate
		exit;
	if keyboard_check_pressed(vk_f1)
		scr_resetinput();
	var _dvc = 0;
	gamepad_set_axis_deadzone(_dvc, 0.4);
	key_up = keyboard_check(global.key_up) || gamepad_button_check(_dvc, global.key_upC) || gamepad_axis_value(_dvc, gp_axislv) < 0;
	key_up2 = keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(_dvc, global.key_upC) || (gamepad_axis_value(_dvc, gp_axislv) < -0.5 && !stickpressed);
	key_right = keyboard_check(global.key_right) || gamepad_button_check(_dvc, global.key_rightC) || gamepad_axis_value(_dvc, gp_axislh) > 0;
	key_right2 = keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(_dvc, global.key_rightC) || (gamepad_axis_value(_dvc, gp_axislh) > 0.5 && !stickpressed);
	key_left = -(keyboard_check(global.key_left) || gamepad_button_check(_dvc, global.key_leftC) || gamepad_axis_value(_dvc, gp_axislh) < 0);
	key_left2 = -(keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(_dvc, global.key_leftC) || (gamepad_axis_value(_dvc, gp_axislh) < -0.5 && !stickpressed));
	key_down = keyboard_check(global.key_down) || gamepad_button_check(_dvc, global.key_downC) || gamepad_axis_value(_dvc, gp_axislv) > 0;
	key_down2 = keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(_dvc, global.key_downC) || (gamepad_axis_value(_dvc, gp_axislv) > 0.5 && !stickpressed);
	key_jump2 = keyboard_check(global.key_jump) || gamepad_button_check(_dvc, global.key_jumpC);
	key_jump = keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(_dvc, global.key_jumpC);
	key_slap = keyboard_check(global.key_slap) || gamepad_button_check(_dvc, global.key_slapC);
	key_slap2 = keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(_dvc, global.key_slapC);
	key_taunt = keyboard_check(global.key_taunt) || gamepad_button_check(_dvc, global.key_tauntC);
	key_taunt2 = keyboard_check_pressed(global.key_taunt) || gamepad_button_check_pressed(_dvc, global.key_tauntC);
	key_attack = keyboard_check(global.key_attack) || gamepad_button_check(_dvc, global.key_attackC) || gamepad_button_check(_dvc, gp_shoulderrb);
	key_attack2 = keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(_dvc, global.key_attackC) || gamepad_button_check_pressed(_dvc, gp_shoulderrb);
	key_shoot = keyboard_check(global.key_shoot) || gamepad_button_check(_dvc, global.key_shootC);
	key_shoot2 = keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(_dvc, global.key_shootC) || gamepad_button_check_pressed(_dvc, gp_shoulderl);
	key_start = keyboard_check(global.key_start) || gamepad_button_check(_dvc, global.key_startC);
	key_start2 = keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(_dvc, global.key_startC);
	key_escape = keyboard_check_pressed(vk_escape) || gamepad_button_check(_dvc, gp_select);
	if (gamepad_axis_value(_dvc, gp_axislh) > 0.5 || gamepad_axis_value(_dvc, gp_axislh) < -0.5 || gamepad_axis_value(_dvc, gp_axislv) > 0.5 || gamepad_axis_value(_dvc, gp_axislv) < -0.5)
		stickpressed = true;
	else
		stickpressed = false;
	return true;
}
