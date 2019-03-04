class Image < ApplicationRecord
  belongs_to :gallery, optional: true
  belongs_to :slider,  optional: true

  has_attached_file :background, styles: {
    pc:     [ "720x?", :jpeg ],
    tablet: [ "480x?", :jpeg ],
    mobile: [ "240x?", :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :logo, styles: {
   logo: [ "?x64", :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :tagline, styles: {
    med: [ "250x32!" ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :gallery_image, styles: {
    thumb:        [ "100x100", :jpeg ],
    cover:        [ "680x680", :jpeg ],
    tablet_cover: [ "440x440", :jpeg ],
    mobile_cover: [ "280x280", :jpeg ]
  },
  convert_options: {
    all:          "-quality 85 -strip",
    thumb:        "-background black -gravity center -extent 100x100",
    cover:        "-background black -gravity center -extent 680x680",
    tablet_cover: "-background black -gravity center -extent 440x440",
    mobile_cover: "-background black -gravity center -extent 280x280"
  }

  has_attached_file :slider_image, styles: {
    pc:     [ "720x360!", :jpeg ],
    tablet: [ "480x240!", :jpeg ],
    mobile: [ "320x160!", :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :static_image, styles: {
    small: [ "100x100!" ],
    med:   [ "160x160!" ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :info_image, styles: {
    thumb: [ "100x75!", :jpeg ],
    small: [ "320x?",   :jpeg ],
    med:   [ "360x?",   :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :vid_remonta_image, styles: {
    small: [ "320x?",   :jpeg ],
    med:   [ "360x?",   :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :vid_rabot_image, styles: {
    small: [ "320x?",   :jpeg ],
    med:   [ "360x?",   :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  validates_attachment :background, :logo, :tagline, :gallery_image, :info_image, :slider_image, :static_image, :vid_remonta_image, :vid_rabot_image, content_type: {
    content_type: /\Aimage\/.*\z/,
    message: "имеет неверное расширение"
  }
end
