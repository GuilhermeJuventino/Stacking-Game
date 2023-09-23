extends CharacterBody2D

var stacked: bool = false

@onready var collision_2: CollisionShape2D = $CrateBottom/Collision2
@onready var player = get_parent().get_parent().get_node("Player/PlayerBody")

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#var bodies = get_colliding_bodies()
	if !stacked:
		velocity.y += gravity * delta
	
	move_and_slide()
	
func stack():
	print("Stack() was called")
	
	Game.crates.append(self)
	stacked = true

func _on_crate_bottom_body_entered(_body):
	if !stacked:
		call_deferred("stack")
