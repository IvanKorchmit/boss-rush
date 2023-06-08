extends Node2D

@export var movement : Movement
@export var animator : RotatableAnimator
func _process(delta):
	var dir : Vector2 = Input.get_vector("left", "right", "up", "down")
	animator.angle = vec_to_deg(get_local_mouse_position() - position)
	movement.direction = dir
	
static func vec_to_deg(direction : Vector2) -> float:
	return rad_to_deg(atan2(direction.y, direction.x))
