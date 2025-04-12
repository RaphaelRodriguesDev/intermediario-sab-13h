extends CollisionShape2D


export(NodePath) onready var player_path = get_node(player_path)

func _ready():
	print(player_path.name)
