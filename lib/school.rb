# code here!
require 'pry'

class School

attr_accessor :name, :roster, :studentname, :grade


  def initialize(name)
    @name = name
    @roster = {}
  end

#
  def add_student(studentname, grade)
# says if its nil, set to this empty array, but if it's not nil, do nothing and let it retain its prior value
    @roster[grade] ||= []
    @roster[grade] << studentname
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # @roster.map do |key, value|
       @roster.each_value { |v| v.sort! }
  end
end
