extends RigidBody

var my_spawn

func _ready():
	my_spawn = get_tree().get_root().find_node("BallSpawn", true, false)

func reset():
	self.translation = my_spawn.translation
	self.axis_lock_linear_x = false
	self.axis_lock_linear_y = false
	self.axis_lock_linear_z = false

func freeze(id):
	self.axis_lock_linear_x = true
	self.axis_lock_linear_y = true
	self.axis_lock_linear_z = true


func _on_Ball_body_entered(body):
	if body is KinematicBody and not $AudioStreamPlayer.is_playing():
		$AudioStreamPlayer.play()
