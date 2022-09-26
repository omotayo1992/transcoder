variable "transcoder_name" {
  type = string
}


variable "storage_class_content" {
  type = string
}

variable "storage_class_thumbnails" {
  type = string
}

variable "input_bucket_name" {
  type = string

}

variable "output_bucket_name" {
  type = string

}

variable "bucket_acl" {
  type = string
}


#####PRESET####

variable "create_preset" {
  type = bool

}

variable "container" {
  type = string

}

variable "description" {
  type = string

}


variable "preset_name" {
  type = string
}

variable "audio_packing_mode" {
  type = string
}

variable "audio_bit_rate" {
  type = number
}


variable "audio_channel" {
  type = number
}

variable "audio_codec" {
  type = string
}

variable "audio_sample_rate" {
  type = number

}

variable "audio_codec_options_profile" {
  type = string

}

variable "video_bit_rate" {
  type = string

}

variable "video_codec" {
  type = string

}


variable "video_display_aspect_ratio" {
  type = string

}

variable "video_fixed_gop" {
  type = string

}

variable "video_frame_rate" {
  type = string

}

variable "video_max_frame_rate" {
  type = string

}

variable "video_keyframes_max_dist" {
  type = number

}

variable "video_max_height" {
  type = string

}

variable "video_max_width" {
  type = string

}

variable "video_padding_policy" {
  type = string

}

variable "video_sizing_policy" {
  type = string

}

variable "video_codec_options_profile" {
  type = string

}

variable "video_codec_options_level" {
  type = string

}

variable "video_maxReference" {
  type = number

}

variable "video_InterlacedMode" {
  type = string

}


variable "video_ColorSpaceConversionMode" {
  type = string

}


variable "video_watermarks_id" {
  type = string
}

variable "video_watermarks_max_width" {
  type = string

}

variable "video_watermarks_max_height" {
  type = string

}

variable "video_watermarks_sizing_policy" {
  type = string

}

variable "video_watermarks_horizontal_align" {
  type = string

}

variable "video_watermarks_horizontal_offset" {
  type = string

}


variable "video_watermarks_vertical_align" {
  type = string

}

variable "video_watermarks_vertical_offset" {
  type = string

}

variable "video_opacity" {
  type = string

}

variable "video_target" {
  type = string

}

variable "thumbnails_format" {
  type = string

}

variable "thumbnails_interval" {
  type = number

}


variable "thumbnails_max_width" {
  type = string

}

variable "thumbnails_max_height" {
  type = string

}

variable "thumbnails_padding_policy" {
  type = string

}

variable "thumbnails_sizing_policy" {
  type = string

}















