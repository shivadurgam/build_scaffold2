class Exam < ActiveRecord::Base

validates_presence_of :name, :marks, :message => "can't be blank"
validates_numericality_of :marks, :message => "must be number"

end
