extends Area2D

var max_hp = 20
var hp = max_hp


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("entrou")
	$Painel.visible = true
	$Painel.set_text("Soldado lv1\nHP: " + str(hp) + "/" + str(max_hp))


func _on_body_exited(body: Node2D) -> void:
	print("saiu")
	$Painel.visible = false
