extends Area2D


@onready var animation_player = $AnimationPlayer
@onready var coins = $"../UI/Coins"


func _on_body_entered(body):
	GameManager.add_score()
	animation_player.play("pickup")
	GameManager.coin_collected.emit()
	#$Coins.text = "Coins: "+ str(game_manager.score)
