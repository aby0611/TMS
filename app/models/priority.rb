class Priority < ActiveRecord::Base
  def self.options
    {"Immediate" => 4, "Urgent" => 3, "High" => 2, "Normal"=> 1, "Low" => 0}
  end

end