class AfterOrderJob < ApplicationJob
  queue_as :default

  after_perform do |job|
    #Use User Mailer to notify users
  end

  def perform
    #Perform you long task here
  end
end