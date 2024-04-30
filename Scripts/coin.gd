extends Area2D

@onready var game_manager = %"Game Manager"
@onready var animation_player = $AnimationPlayer
@onready var coins = $"../UI/Coins"






func _on_body_entered(body):
	game_manager.add_score()
	animation_player.play("pickup")
	$Coins.text = "Coins: "+ str(game_manager.score)
