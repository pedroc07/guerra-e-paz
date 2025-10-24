extends Sprite2D
'''
		cur_pos.x += 100 * delta
	# wrap around screen
	if(Input.is_key_pressed(KEY_LEFT)):
		cur_pos.x -= 10
		self.set_position(cur_pos)
		
	if(Input.is_key_pressed(KEY_RIGHT)):
		cur_pos.x += 10
		self.set_position(cur_pos)

	if(Input.is_key_pressed(KEY_UP)):
		cur_pos.y -= 10
		self.set_position(cur_pos)
		
	if(Input.is_key_pressed(KEY_DOWN)):
		cur_pos.y += 10
		self.set_position(cur_pos)
		'''
