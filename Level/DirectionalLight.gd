extends DirectionalLight

func _ready():
	reset()

func reset():
	self.light_energy = 1

func freeze(id):
	$AnimationPlayer.play("fade")
