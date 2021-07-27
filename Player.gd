extends Paddle

export var speed := 120

func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	velocity.y -= Input.get_action_strength("ui_up") * speed
	velocity.y += Input.get_action_strength("ui_down") * speed

	position += velocity * delta
