extends AudioStreamPlayer2D

# 示例：动态加载音频文件   
func play_sound_from_path(sound_path: String):
	# 检查文件是否存在
	if FileAccess.file_exists(sound_path):
		# 加载音频流
		var audio_stream = load(sound_path)
		# 检查加载是否成功
		if audio_stream is AudioStream:
			# 设置音频流
			self.stream = audio_stream 
			# 停止之前的音效
			self.stop()
			# 播放音频
			self.play()
	pass
