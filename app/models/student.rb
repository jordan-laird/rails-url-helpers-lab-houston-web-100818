class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle
      if self.active == false 
         self.active = true 
         self.save
       elsif self.active == true 
         self.active = false 
         self.save
       end 

  end
end