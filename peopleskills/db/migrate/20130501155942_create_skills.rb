class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string  :name
      t.string  :context
      t.timestamps
    end
  end
end


# A User has many skills and a Skill can be assigned to many users.
# A User has a proficiency rating for each of their skills.
# Multiple skills can not be saved with the same name.