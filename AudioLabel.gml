function AudioLabel() {

}

AudioLabels.music.stop()

gamemaker_sound_stop({ sound : "MUSIC_AUDIO_LABEL" })


/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
#macro global.music_audio_label <expression>

AudioLabel.get({ audio_label : "music" })
