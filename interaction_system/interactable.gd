extends CollisionObject3D
class_name Interactable

signal  interacted

@export var interact_prompt : String = "Interact"

func interact():
	interacted.emit()
