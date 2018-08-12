class GalleryImage < ApplicationRecord
  belongs_to :gallery

  has_attached_file    :image,
                               styles: {
                                 thumb: [ "100x100", :jpeg ],
                                 cover: [ "720x720", :jpeg]
                               },
                               convert_options: {
                                 thumb: "-quality 90 -strip",
                                 cover: "-quality 90 -strip"
                               }
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\z/,
                                               message: "имеет неверное расширение"
                                             },
                               size:         { less_than: 1.megabyte,
                                               message: "слишком велико"
                                             }
end
