extends Area3D



func _on_body_entered(body):
	if body is player:
		get_tree().change_scene_to_file("res://main3.tscn")
