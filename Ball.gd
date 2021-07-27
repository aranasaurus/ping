extends RigidBody2D

onready var collider := $Collider

var velocity := Vector2.ZERO
var max_speed := 300

func _ready() -> void:
	randomize()
	apply_central_impulse(
		Vector2(
			rand_range(-1, 1) * max_speed,
			rand_range(-1, 1) * max_speed
		)
	)

func _draw() -> void:
	draw_circle(Vector2.ZERO, collider.shape.radius, Color.whitesmoke)
