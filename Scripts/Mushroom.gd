extends KinematicBody2D

export var speed = 64
export var health = 1
var motion = Vector2.ZERO
var move_direction = -1
var gravity = 1200

func _physics_process(delta: float) -> void:
	motion.x = speed * move_direction
	motion.y += gravity * delta
	
	if move_direction == 1:
		$texture.flip_h = true
		
	else:
		$texture.flip_h = false
		
	if $ray_wall.is_colliding():
		$anim.play("idle")
		
	motion = move_and_slide(motion)
		
func _on_anim_animation_finished(anim_name: String) -> void:
	if anim_name == "idle":
		$texture.flip_h != $texture.flip_h
		$ray_wall.scale.x *= -1
		move_direction *= -1
		$anim.play("run")


func _on_hitbox_body_entered(body):
	$anim.play("hit")
