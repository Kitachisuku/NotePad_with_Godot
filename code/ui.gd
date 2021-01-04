extends Control

func _on_open_pressed():
	$fd.set_mode(FileDialog.MODE_OPEN_FILE)
	$fd.set_current_path("C:\\Users\\")
	$fd.set_current_dir("C:\\Users\\")
	$fd.show()

func _on_fd_draw():
	$fd.set_current_path("C:\\Users\\")
	$fd.set_current_dir("C:\\Users\\")

func _on_fd_file_selected(path):
	var file = File.new()
	if $fd.get_mode() == FileDialog.MODE_OPEN_FILE:
		file.open(path,File.READ)
		$TextEdit.set_text(file.get_as_text())
		file.close()
	else:
		file.open(path,File.WRITE)
		file.store_string($TextEdit.get_text())
		file.close()

func _on_save_pressed():
	$fd.set_mode(FileDialog.MODE_SAVE_FILE)
	$fd.set_current_path("C:\\Users\\")
	$fd.set_current_dir("C:\\Users\\")
	$fd.show()
