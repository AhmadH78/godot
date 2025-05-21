extends CharacterBody2D

var SPEED = 6
var keyObtained = false

@onready var target: CharacterBody2D = $"../Player"

@onready var sprite_2d: Sprite2D = $Sprite2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name == "Player"):
		keyObtained = true
		
		
func _physics_process(delta: float) -> void:
	if keyObtained == true:
		var direction = (target.position - position - Vector2(50, 0))
		velocity = direction * SPEED
		move_and_slide()
		var isLeft = velocity.x < 0
		sprite_2d.flip_h = isLeft
