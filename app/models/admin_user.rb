class AdminUser < ApplicationRecord
  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits

  attr_accessor :first_name, :last_name
end
