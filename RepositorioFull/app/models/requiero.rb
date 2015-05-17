class Requiero < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :tipoResiduo
end
