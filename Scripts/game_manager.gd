extends Node


## GameManager can now emit the coin_collected signal globally.
signal coin_collected()

var score = 0

func add_score(value: int = 1):
	score += value


