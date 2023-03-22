extends Camera2D

var current_level = 0
var move_pos = 0
var moving_screen = false
var old_x = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var player = get_tree().get_first_node_in_group("player")
	if player:
		position = lerp(position, player.position, 0.1)
#	if Input.is_action_just_pressed("bam"):
#		current_level += 1
#		old_x = position.x
#		moving_screen = true
#
#	if moving_screen:
#		position.x = lerp(old_x, old_x + 512, move_pos*move_pos*move_pos)
#		move_pos += delta
#
#		if move_pos > 1:
#			moving_screen = false
#			position.x = old_x + 512
#			move_pos = 0
