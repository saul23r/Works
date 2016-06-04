class Comment < ActiveRecord::Base

  validates :title, presence: {message: 'es requerido'},  length: {minimum: 5, message: 'la longitud minima de 5'}
  validates :text , presence: {message: 'Es requerido'}
end
