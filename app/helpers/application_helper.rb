module ApplicationHelper

  def is_home?
    controller.controller_name == 'public' && controller.action_name == 'home'
  end

  def is_auth?
    controller.controller_name == 'sessions' || controller.action_name == 'registrations'
  end

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

end
