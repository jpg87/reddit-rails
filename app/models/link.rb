# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :string(255)
#

class Link < ActiveRecord::Base
  attr_accessible :url, :title, :user_id
 
  # Associations -------------------
  belongs_to :user
  has_many :comments
  has_many :votes

  # Validations --------------------
  validates :url, :title, presence: true
end
