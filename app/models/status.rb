class Status < ActiveRecord::Base
  @options = {"manager" => {"Assigned to" => "assign", "Cancel" => "cancel", "Stop" => "stop", "Close"=> "close"}, "member" => {"Accept" => "accept", "Rejected" => "reject", "Reguest for extenstion" => "extenstion"}}

  def self.options(user)
    if user.manager?
      @options["manager"]
    else
      @options["member"]
    end
  end

  def self.get_key(value)
    if value == "evaluation"
      "Manager evaluation"
    else
      @options["manager"].index(value) || @options["member"].index(value)
    end
  end
end