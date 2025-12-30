extends NavigationAgent3D

@onready var ray_cast: RayCast3D = $"../RayCast"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
			if ray_cast.is_colliding():
				$"2".play()
				queue_free()
				var target = ray_cast.get_collider()
