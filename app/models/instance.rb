class Instance < ActiveRecord::Base
  belongs_to :gx_class_set
  has_one :gx_class, through: :gx_class_set
  has_many :reservations
  belongs_to :instructor
  belongs_to :studio
  
  def get_at var
    var.downcase!
    if ['instructor','club','studio'].include? var
      case var
        when 'instructor'
          instructor || gx_class_set.instructor
        when 'club'
          club || gx_class_set.club
        when 'studio'
          studio || gx_class_set.studio
      end
    else
      self[var] || gx_class_set[var]
    end
  end
end
