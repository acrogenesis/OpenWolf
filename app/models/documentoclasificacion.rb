class Documentoclasificacion < ActiveRecord::Base
  versioned
  
  SOLICITUDINFOPUBLICA = '9001'
  
  has_many :documentos
  belongs_to :documentocategoria

  validates_presence_of :nombre, :codigo
  validates_uniqueness_of :codigo
  validates_uniqueness_of :nombre, :scope => :documentocategoria_id

  default_scope :include => :documentocategoria, :order => :nombre

  scope :nombre_like, lambda { |nombre|
    unless nombre.nil? || nombre.empty? || nombre.first.nil?
      where("documentoclasificaciones.nombre like ?", "%#{nombre}%" )
   end
  }

  def to_label
    nombre
  end
end