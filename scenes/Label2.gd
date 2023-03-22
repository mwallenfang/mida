extends Label

var time = 0

func secs_to_time(seconds):
	var min = int(seconds / 60)
	var sec = int(seconds - min) % 60
	var mil = int((seconds - int(seconds))*100)
	
	return str(min).pad_zeros(2) + ":" + str(sec).pad_zeros(2) + ":" + str(mil) 

# Called when the node enters the scene tree for the first time.
func _ready():
	time = 0
	text = secs_to_time(time)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	text = secs_to_time(time)
