extends Sprite


func _ready():
	pass



func _on_items_body_entered(body):
	print(body.name)
