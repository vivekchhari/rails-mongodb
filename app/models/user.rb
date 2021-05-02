class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  
  has_many :posts, dependent: :destroy
  accepts_nested_attributes_for :posts, reject_if: :all_blank, allow_destroy: true
end
