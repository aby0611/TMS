class Status < ActiveRecord::Base
  @options = {"manager" => {"Assigned to" => "assign", "Cancel" => "cancel", "Stop" => "stop", "Close"=> "close"}, "member" => {"Accept" => "accept", "Reject" => "reject", "Reguest for extenstion" => "extenstion"}}

  def self.options(user)
    if user.manager?
      @options["manager"]
    else
      @options["member"]
    end
  end

  def self.get_key(value)
    @options["manager"].index(value) || @options["member"].index(value)
  end
end