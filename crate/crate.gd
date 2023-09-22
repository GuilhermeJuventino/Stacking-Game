extends RigidBody2D

var stacked: bool = false

@onready var collision_2: CollisionShape2D = $Collision2

# Called when the node enters the scene tree for the first time.
func _ready():
	set_freeze_mode(RigidBody2D.FREEZE_MODE_KINEMATIC)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func stack():
	
	
	if stacked:
		sleeping = true
		set_freeze_enabled(sleeping)
