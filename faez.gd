extends CharacterBody3D

var player = null
var health = 100
var state_machine

const SPEED = 4.0

@export var player_path : NodePath
@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D

func free() -> void:
	player = get_node(player_path)
	
	
	
func _physics_prosess(delta):
	velocity = Vector3.ZERO
	
	navigation_agent_3d.set_target_position(player.global_position)
	var next_nav_point = navigation_agent_3d.get_next_path_position()
	velocity = (next_nav_point - global_position).normalized() * SPEED
