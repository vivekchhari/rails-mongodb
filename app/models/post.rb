class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  field :email, type:String
  field :phone, type: Integer
  #field :user_id, ObjectId
  
  validates :email, presence: true, uniqueness: true,
  format: { :with => /^([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})$/i, :multiline => true }
  validates :phone,   :presence => {:message => 'hello world, bad operation!'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }


  belongs_to :user
end
