namespace :user do
  desc "Enrinch our users with ClearBit"
  task update_all: :environment do
    users = User.all
    puts "Enqueing update of #{users.count} users.."
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end
end
