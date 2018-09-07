class Image < ApplicationRecord
  has_attached_file    :image,
                               styles: {
                                 pc:     [ "720x?", :jpeg ],
                                 tablet: [ "480x?",  :jpeg ],
                                 mobile: [ "240x?",  :jpeg ],
                                 logo:   [ "?x64",   :jpeg ]
                               },
                               convert_options: {
                                 pc:     "-quality 85 -strip",
                                 tablet: "-quality 85 -strip",
                                 mobile: "-quality 85 -strip",
                                 logo:   "-quality 85 -strip"
                               }
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\z/,
                                               message: "имеет неверное расширение"
                                             }
end
