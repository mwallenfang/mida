extends Control

const LEVEL_AMOUNT = 1
const START_LEVEL = 1
var levels = []

# Called when the node enters the scene tree for the first time.
func _ready():
	# Load all levels and prepare them to be loaded in
	for i in range(1,LEVEL_AMOUNT+1):
		var level = load("res://scenes/levels/Level"+str(i)+".tscn")
		levels.append(level)
	
	$GameContainer.add_child(levels[START_LEVEL-1].instantiate())