extends CanvasLayer
@onready var animation_player: AnimationPlayer = $Control/AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "animation":
		animation_player.play("animation2")
	if anim_name == "animation2":
		animation_player.play("animation3")
	if anim_name == "animation3":
		animation_player.play("animation4")
		await get_tree().create_timer(7.0).timeout
		get_tree().change_scene_to_file("res://main_menu.tscn")
