class Categoria < ActiveRecord::Base
validates :nombre, presence:true, uniqueness:true, numericality:false
end
