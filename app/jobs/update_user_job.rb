class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Calling ClearBit API to #{user.email}"
    # generate a task calling the clearbit API
    #user.update(company: #{output from the api!)
    sleep 2
    puts "done!"
  end
end
