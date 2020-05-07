class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  def self.generate
    adjectives = ['Ancient', 'Broken', 'Creative', 'Dangerous', 'Effective', 'Flying', 'Gilded']    
    nouns = ['Highway', 'Intern', 'Jackhammer', 'Lion', 'Master']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
end
