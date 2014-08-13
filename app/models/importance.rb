class Importance < ActiveRecord::Base
  def self.options
    {"100%" => 10, "90%" => 9, "80%" => 8, "70%"=> 7, "60%" => 6, "50%" => 5, "40%" => 4, "30%" => 3, "20%" => 2, "10%" => 1, "0%" => 0}
  end
end