# == Schema Information
#
# Table name: posts
#
#  id            :bigint           not null, primary key
#  admin_user_id :bigint
#  title         :string
#  body          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :admin_user

  validates_presence_of :title, :body
end
