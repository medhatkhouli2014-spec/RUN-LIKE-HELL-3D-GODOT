extends Control


func _ready() -> void:
	pass 


func _process(_delta):
	pass


func _on_button_pressed() -> void:
	print("Start Prassed")
	get_tree().change_scene_to_file("res://scenes/World.tscn")
func _on_options_2_pressed() -> void:
	print("options Prassed")


func _on_Exit_pressed() -> void:
	print("Exit Prassed")
	get_tree().quit()
