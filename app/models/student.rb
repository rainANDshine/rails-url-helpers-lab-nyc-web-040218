class Student < ActiveRecord::Base
  after_initialize :set_default

  def to_s
    self.first_name + " " + self.last_name
  end

  def set_default
    self.active = false if self.active.nil?
  end

  def status
    if self.active
      "active"
    else
      "inactive"
    end
  end
end
