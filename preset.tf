resource "aws_elastictranscoder_preset" "bar" {
  count = var.create_preset == true ? 1 : 0
  container   = var.container
  description = var.description
  name        = var.preset_name

  audio {
    audio_packing_mode = var.audio_packing_mode
    bit_rate           = var.audio_bit_rate
    channels           = var.audio_channel
    codec              = var.audio_codec
    sample_rate        = var.audio_sample_rate
  }

  audio_codec_options {
    profile = var.audio_codec_options_profile
  }

  video {
    bit_rate             = var.video_bit_rate
    codec                = var.video_codec
    display_aspect_ratio = var.video_display_aspect_ratio
    fixed_gop            = var.video_fixed_gop 
    frame_rate           = var.video_frame_rate
    max_frame_rate       = var.video_max_frame_rate
    keyframes_max_dist   = var.video_keyframes_max_dist
    max_height           = var.video_max_height
    max_width            = var.video_max_width
    padding_policy       = var.video_padding_policy
    sizing_policy        = var.video_sizing_policy
  }

  video_codec_options = {
    Profile                  = var.video_codec_options_profile
    Level                    = var.video_codec_options_level
    MaxReferenceFrames       = var.video_maxReference
    InterlacedMode           = var.video_InterlacedMode
    ColorSpaceConversionMode = var.video_ColorSpaceConversionMode
  }

  video_watermarks {
    id                = var.video_watermarks_id
    max_width         = var.video_watermarks_max_width
    max_height        = var.video_watermarks_max_height
    sizing_policy     = var.video_watermarks_sizing_policy
    horizontal_align  = var.video_watermarks_horizontal_align
    horizontal_offset = var.video_watermarks_horizontal_offset
    vertical_align    = var.video_watermarks_vertical_align
    vertical_offset   = var.video_watermarks_vertical_offset
    opacity           = var.video_opacity
    target            = var.video_target
  }

  thumbnails {
    format         = var.thumbnails_format
    interval       = var.thumbnails_interval
    max_width      = var.thumbnails_max_width
    max_height     = var.thumbnails_max_height
    padding_policy = var.thumbnails_padding_policy
    sizing_policy  = var.thumbnails_sizing_policy
  }
}


