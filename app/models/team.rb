class Team < ActiveRecord::Base
  validates :name,     presence: true, uniqueness: true
  validates :password, presence: true

  has_many :users, dependent: :destroy
  after_initialize :init

  def init
    self.questions_answered ||= 0
  end
end
