class Skill < ActiveRecord::Base
  validates :context, :uniqueness => true
  has_many :users, :through => :proficiencies
  has_many :proficiencies

  def user_with_proficiency(score)
    Proficiency.where("proficiency=? AND skill_id=? ",score, self.id)
  end  
end
