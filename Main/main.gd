extends Node2D
@onready var BEACH = preload("res://beach/beach.tscn")
var beach_pieces = []


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(2):
		var beach = BEACH.instantiate()
		beach.position.y -= i * 720
		get_tree().get_root().add_child.call_deferred(beach)
		beach_pieces.append(beach)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("ui_up")):
		for beach in beach_pieces:
			beach.position.y += 10
			if beach.position.y == 720:
				beach.position.y = -720
				
	pass
