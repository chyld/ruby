require 'pry'

class Employee
  attr_accessor :name, :employee_id
end

class Dev < Employee
  attr_accessor :language
  def to_s
    "#{name} loves #{language}"
  end
end

class JuniorDev < Dev
  def fix_bugs
    puts "#{name} with an id of #{employee_id} loves #{language} is fixing bugs"
  end
end

class SeniorDev < Dev
  def delegate_bug_fixing
    puts "#{name} with an id of #{employee_id} loves #{language} is telling jr devs to fix bugs"
  end
end

class QualityAssurance < Employee
  def spot_bugs
    puts "#{name} with an id of #{employee_id} is spotting bugs"
  end
end



binding.pry
