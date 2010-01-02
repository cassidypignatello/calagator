require 'etc'
require 'socket'

ExceptionNotifier.configure_exception_notifier do |c|
  c[:exception_recipients] = [SECRETS.administrator_email]
  c[:sender_address] = "#{Etc.getlogin}@#{Socket.gethostname}"
  c[:subject_prepend] = "[ERROR #{SETTINGS.name}] "
  c[:skip_local_notification]  = false
end
