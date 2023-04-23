extends CanvasLayer

var coins = 0

func _ready():
	$CoinsCollectedText.text = str(coins)

func handleCoinCollected():
	coins += 1
	$CoinsCollectedText.text = str(coins)
	if coins == 7:
		showCongratulations()

func showCongratulations():
	var congratulations_scene = preload("res://Escenas/Congratulations.tscn")
	get_tree().change_scene_to(congratulations_scene)
