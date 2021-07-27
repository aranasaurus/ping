tool
extends KinematicBody2D
class_name Paddle

onready var collider := $Collider

func _draw() -> void:
	var extents: Vector2 = collider.shape.extents
	draw_rect(Rect2(Vector2(-extents.x, -extents.y), extents * 2), Color.whitesmoke)
