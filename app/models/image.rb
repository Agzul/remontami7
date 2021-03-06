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
    cover:        [ "600x600", :jpeg ],
    tablet_cover: [ "400x400", :jpeg ],
    mobile_cover: [ "250x250", :jpeg ]
  },
  convert_options: {
    all:          "-quality 85 -strip",
    thumb:        "-background black -gravity center -extent 100x100",
    cover:        "-background black -gravity center -extent 600x600",
    tablet_cover: "-background black -gravity center -extent 400x400",
    mobile_cover: "-background black -gravity center -extent 250x250"
  }

  has_attached_file :slider_image, styles: {
    pc:     [ "720x360!", :jpeg ],
    tablet: [ "460x230!", :jpeg ],
    mobile: [ "300x150!", :jpeg ]
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
    small: [ "300x?",   :jpeg ],
    med:   [ "360x?",   :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :vid_remonta_image, styles: {
    small: [ "300x?",   :jpeg ],
    med:   [ "360x?",   :jpeg ]
  },
  convert_options: {
    all: "-quality 85 -strip"
  }

  has_attached_file :vid_rabot_image, styles: {
    small: [ "300x?",   :jpeg ],
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
