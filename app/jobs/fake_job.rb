class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "I'm starting a job!"
    sleep 3
    puts "Job done!"
  end
end
