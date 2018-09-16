class Image < ApplicationRecord
  belongs_to :info,    optional: true
  belongs_to :gallery, optional: true
  belongs_to :slider,  optional: true

  has_attached_file :background, styles: {
    pc:     [ "720x?", :jpeg ],
    tablet: [ "480x?", :jpeg ],
    mobile: [ "240x?", :jpeg ]
  },
  convert_options: {
    all:     "-quality 85 -strip"
  }

  has_attached_file :logo, styles: {
   logo: [ "?x64", :jpeg ]
  },
  convert_options: {
    all:  "-quality 85 -strip"
  }

  has_attached_file :gallery_image, styles: {
    thumb:        [ "100x100", :jpeg ],
    cover:        [ "680x680", :jpeg ],
    tablet_cover: [ "440x440", :jpeg ],
    mobile_cover: [ "280x280", :jpeg ]
  },
  convert_options: {
    all:  "-quality 85 -strip"
  }

  has_attached_file :info_image, styles: {
   thumb: [ "100x?", :jpeg ],
   small: [ "180x?", :jpeg ],
   med:   [ "360x?", :jpeg ]
  },
  convert_options: {
    all:  "-quality 85 -strip"
  }

  has_attached_file :slider_image, styles: {
    pc:     [ "720x360!", :jpeg ],
    tablet: [ "480x240!", :jpeg ],
    mobile: [ "320x160!", :jpeg ]
  },
  convert_options: {
    all:  "-quality 85 -strip"
  }

  validates_attachment :background, :logo, :gallery_image, :info_image, :slider_image, content_type: {
    content_type: /\Aimage\/.*\z/,
    message: "имеет неверное расширение"
  }
end
