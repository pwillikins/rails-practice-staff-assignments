class Person < ActiveRecord::Base

  has_many :assignments

  validate :first_and_last

  private
  def first_and_last
    if title.blank?
      if first_name.blank? || last_name.blank?
        errors[:base] << "You must enter a title/last name, or first/last name"
      end
    else
      if last_name.blank?
        errors[:base] << "You must enter a title/last name, or first/last name"
      end
    end
  end
end