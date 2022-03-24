namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Drop data base...") { %x(rails db:drop) }      
      show_spinner("Create data base...") { %x(rails db:create) }
      show_spinner("Migrate data base...") { %x(rails db:migrate) }
      show_spinner("Populating data base") { %x(rails db:seed) }
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

private
  def show_spinner(msg_start, msg_end = "Done!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
