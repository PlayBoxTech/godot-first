extends CanvasLayer


@onready var coins: Label = %Coins

func _ready() -> void:
	# connects the signal from the GameManager autoload to the _on_coin_collected() method.
	GameManager.coin_collected.connect(_on_coin_collected)


func _on_coin_collected() -> void:
	coins.text = "Coins: "+ str(GameManager.score)
