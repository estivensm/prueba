class GenerateRandomUserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    User.create(name: "Estiven job", email: "salazar-moncada-estiven@hotmail.com", password: "estiven12", password_confirmation: "estiven12")
  end
end
