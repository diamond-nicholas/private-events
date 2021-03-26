# rubocop:disable Style/GuardClause
module ApplicationHelper
  def app_flashes
    if flash[:notice]
      content_tag :div do
        content_tag(:p, notice)
      end
    elsif flash[:alert]
      content_tag :div do
        content_tag(:p, alert)
      end
    end
  end

  def show_validation_errors(post)
    out = ''
    if post.errors.any?
      out += "<div id=\"error_explanation\"><h2>#{pluralize(@post.errors.count,
                                                            'error')} prohibited this post from being saved:</h2><ul>"

      post.errors.each do |error|
        out += "<li>#{error.full_message}</li>"
      end
      out += '</ul></div>'
    end
    out.html_safe
  end

  def show_attend_btn(event)
    unless event.attendees.include?(current_user)
      content_tag :td do
        render 'event_attendances/form', event: event, event_attendance: @event_attendances
      end
    end
  end

  def show_nav_links
    if user_signed_in?
      content_tag :li do
        link_to 'User', users_show_path(id: current_user.id)
      end
      content_tag :li do
        link_to 'Sign Out', destroy_user_session_path, method: :delete
      end
    else
      content_tag :li do
        link_to 'Sign In', new_user_session_path
      end
      content_tag :li do
        link_to 'Sign Up', new_user_registration_path
      end
    end
  end
end
# rubocop:enable Style/GuardClause
