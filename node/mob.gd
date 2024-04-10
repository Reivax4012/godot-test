extends RigidBody2D

func _ready():
	var anims = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(anims[randi() % anims.size()])

func _process(_delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
