class Ofertum < ActiveRecord::Base
  belongs_to :tipoResiduo
  belongs_to :subtipoResiduo
end
