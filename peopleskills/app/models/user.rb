class User < ActiveRecord::Base
  has_many :skills, :through => :proficiencies
  has_many :proficiencies

  def proficiency_for(skill)
    self.proficiencies.where("skill_id=?", skill.id).first.proficiency
  end

  def set_proficiency_for(skill, num)
    # find the Proficiency model record for the passed-in skill
    # update its proficiency attribute using the passed-in num
    # save the Proficiency model
    proficiency = self.proficiencies.where("skill_id=?", skill.id).first
    proficiency.proficiency = num
    proficiency.save!
  end

end
