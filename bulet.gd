extends Area3D
class_name bulet

const SPEED = 55.0
const RANGE = 40.0

var travelld_distance = 0.0

func _physics_process(delta):
	position += -transform.basis.z * SPEED * delta
	
	travelld_distance += SPEED * delta
	if travelld_distance > RANGE:
		queue_free()
