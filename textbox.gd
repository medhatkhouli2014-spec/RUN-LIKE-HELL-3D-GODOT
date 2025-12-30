extends CanvasLayer
@onready var canvas_layer: CanvasLayer = $"."

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		self.visible = true
		await get_tree().create_timer(6.0).timeout
		self.visible = false
