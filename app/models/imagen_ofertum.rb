class ImagenOfertum < ActiveRecord::Base
  belongs_to :imagen
  belongs_to :oferta
end
