class Producto < ActiveRecord::Base
	has_many :descripciones, dependent: :destroy
end
