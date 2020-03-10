class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%B %e, %Y, %l:%M %P")
  end

  def full_name
    if middle_name
      full_name = "#{first_name} #{middle_name} #{last_name}"
    else
      full_name = "#{first_name} #{last_name}"
    end
  end
end
