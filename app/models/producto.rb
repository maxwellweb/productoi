class Producto < ActiveRecord::Base
  attr_accessible :categoria_id, :titulo, :contenido
  belongs_to :categoria
end
