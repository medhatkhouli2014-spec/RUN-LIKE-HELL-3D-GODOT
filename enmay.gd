extends CharacterBody3D

class_name enmay

var health = 100

func _ready():
	pass


func hit(damage):
	health -= damage
	if health <= 0:
		set_physics_process(false)
		$"2".play()
		animation_player.play("anim/DIDE")
		await get_tree().create_timer(3.0).timeout
		queue_free()

@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@onready var animation_player: AnimationPlayer = $"Warzombie F Pedroso/AnimationPlayer"
@onready var _2: AudioStreamPlayer3D = $"2"
@onready var ray_cast: RayCast3D = $RayCast
@onready var bulet: bulet = $bulet


@onready var progress =$"../../CanvasLayer/ProgressBar"

@onready var timer =$"../../Timer"


var speed = 3
@export var player_target : CharacterBody3D


func _on_timer_timeout():
	progress.value-=25

func _physics_process(_delta):
	if progress.value < 10: 
		get_tree().change_scene_to_file("res://main_menu2.tscn")
	velocity= Vector3.ZERO
	navigation_agent_3d.set_target_position(player_target.global_transform.origin)
	var next_navigation = navigation_agent_3d.get_next_path_position()
	velocity = (next_navigation - global_transform.origin).normalized() * speed
	look_at(Vector3(player_target.global_position.x,global_position.y,player_target.global_position.z))
	move_and_slide()
	




func _on_attak_body_entered(body):
	if body.is_in_group("player"):
		animation_player.play("anim/121212121212")





func _on_attak_body_exited(_body):
	animation_player.play("anim/SCREAM")
	animation_player.play("anim/Walk")













func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		progress.value-=25
		timer.start()
