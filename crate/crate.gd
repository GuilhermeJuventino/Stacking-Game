extends RigidBody2D

var stacked: bool = false

@onready var collision_2: CollisionShape2D = $CrateBottom/Collision2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#var bodies = get_colliding_bodies()
	pass
	
func stack():
	print("Stack() was called")
	
	Game.crates.append(self)
	stacked = true
	sleeping = true
	set_freeze_enabled(sleeping)


func _on_crate_bottom_body_entered(_body):
	if !stacked:
		call_deferred("stack")
