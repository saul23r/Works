class Libro < ActiveRecord::Base


has_many :prestamos

  validates :titulo, :autor , :descripcion, :año , :presence => true
  validates :año, :numericality => true

end
