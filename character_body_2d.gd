extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var selecObj = true 


func _ready():
	position = Vector2(0, 0)
	velocity = Vector2(200, 200).normalized() 

func _physics_process(delta):
	var collision = 0
	
	if(Input.is_key_pressed(KEY_LEFT)):
		position.x -= 10
		collision = move_and_collide(velocity * delta)
		
	if(Input.is_key_pressed(KEY_RIGHT)):
		position.x += 10
		collision = move_and_collide(velocity * delta)

	if(Input.is_key_pressed(KEY_UP)):
		position.y -= 10
		collision = move_and_collide(velocity * delta)
		
	if(Input.is_key_pressed(KEY_DOWN)):
		position.y += 10
		collision = move_and_collide(velocity * delta)
		
	if(Input.is_key_pressed(KEY_Z)):
		if selecObj:
			pass
		
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		$CollisionShape2D.set_deferred("disabled", true)


func _on_jogador_body_entered(body: Node2D) -> void:
	$AnimatedSprite2D.play("seletor2")
	selecObj = true 
	


func _on_jogador_body_exited(body: Node2D) -> void:
	$AnimatedSprite2D.play("seletor")
	selecObj = false 
