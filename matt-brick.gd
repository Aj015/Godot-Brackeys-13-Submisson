extends Node3D

@onready var main_1 := $Main #the child

func _ready() -> void:
	if main_1 == null:
		print("Main node not found!")
		return
	if not main_1 is MeshInstance3D:
		print("Main node is not a MeshInstance3D!")
		return
	pass

func _process(delta: float) -> void:
	if main_1 != null:
		#material override of the mesh
		var googoogaga = main_1.material_override
		if googoogaga != null:
			googoogaga.albedo_color = Color(170, 74, 68)  #brick
		else:
			print("Material not found")
	else:
		print("Main null frfr")
