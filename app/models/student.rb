class Student < ActiveRecord::Base
  after_initialize :set_default

  def to_s
    self.first_name + " " + self.last_name
  end

  def set_default
    self.active = false if !defined?(self.active) #if self.active.nil?
  end
end
