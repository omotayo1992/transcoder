module "transcoder" {
  source        = "../../"


  ######   S3_Bucket ####
  output_bucket_name = var.output_bucket_name
  bucket_acl = var.bucket_acl
  input_bucket_name = var.input_bucket_name


  ##########   Transcoder #####
  transcoder_name = var.transcoder_name
  storage_class_content = var.storage_class_content
  storage_class_thumbnails = var.storage_class_thumbnails


  ######   PRESET   #####
  create_preset = var.create_preset
  container     = var.container
  description   = var.description
  preset_name   = var.preset_name
  

  
  #####   audio   ###

  audio_packing_mode = var.audio_packing_mode
  audio_bit_rate     = var.audio_bit_rate
  audio_channel      = var.audio_channel
  audio_codec        = var.audio_codec
  audio_sample_rate  = var.audio_sample_rate

  ######   audio_codec_options    #####
  audio_codec_options_profile = var.audio_codec_options_profile


  ######  video   ######
  video_bit_rate             = var.video_bit_rate
  video_codec                = var.video_codec
  video_display_aspect_ratio = var.video_display_aspect_ratio
  video_fixed_gop            = var.video_fixed_gop
  video_frame_rate           = var.video_frame_rate
  video_max_frame_rate       = var.video_max_frame_rate
  video_keyframes_max_dist   = var.video_keyframes_max_dist
  video_max_height           = var.video_max_height
  video_max_width            = var.video_max_width
  video_padding_policy       = var.video_padding_policy
  video_sizing_policy        = var.video_sizing_policy


  ######    video_codec_options   ####
  video_codec_options_profile    = var.video_codec_options_profile
  video_codec_options_level      = var.video_codec_options_level
  video_maxReference             = var.video_maxReference
  video_InterlacedMode           = var.video_InterlacedMode
  video_ColorSpaceConversionMode = var.video_ColorSpaceConversionMode



  #####    video_watermarks   #####
  video_watermarks_id                = var.video_watermarks_id
  video_watermarks_max_width         = var.video_watermarks_max_width
  video_watermarks_max_height        = var.video_watermarks_max_height
  video_watermarks_sizing_policy     = var.video_watermarks_sizing_policy
  video_watermarks_horizontal_align  = var.video_watermarks_horizontal_align
  video_watermarks_horizontal_offset = var.video_watermarks_horizontal_offset
  video_watermarks_vertical_align    = var.video_watermarks_vertical_align
  video_watermarks_vertical_offset   = var.video_watermarks_vertical_offset
  video_opacity                      = var.video_opacity
  video_target                       = var.video_target


  ####### Thumbanails  ######
  thumbnails_format         = var.thumbnails_format
  thumbnails_interval       = var.thumbnails_interval
  thumbnails_max_width      = var.thumbnails_max_width
  thumbnails_max_height     = var.thumbnails_max_height
  thumbnails_padding_policy = var.thumbnails_padding_policy
  thumbnails_sizing_policy  = var.thumbnails_sizing_policy

}