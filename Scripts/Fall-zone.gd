extends Area2D

func _on_fallzone_body_entered(body):
	print(body.name)
	get_tree().change_scene("res://Prefabs/GameOver.tscn")
