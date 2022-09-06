extends Node2D

var timer
var timer2

func _ready():
	timer = get_node("Timer")
	timer2 = get_node("Timer2")

func _on_TextureButton_pressed():
	timer.start()
	get_node("Chad/RichTextLabel").visible = not get_node("Chad/RichTextLabel").visible
	get_node("TextureButton").visible = not get_node("TextureButton").visible

func _on_Timer_timeout():
	get_node("Chad/RichTextLabel").visible = not get_node("Chad/RichTextLabel").visible
	get_node("ColorRect3").visible = not get_node("ColorRect3").visible

func _on_Area2D_body_entered(body):
	if body.name == "Chad":
		get_tree().change_scene("res://Start2.tscn")

func _on_Area2D2_body_entered(body):
	timer2.start()
	get_node("Chad/RichTextLabel2").visible = not get_node("Chad/RichTextLabel2").visible

func _on_Timer2_timeout():
	get_node("Chad/RichTextLabel2").visible = not get_node("Chad/RichTextLabel2").visible
