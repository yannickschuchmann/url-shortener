class Url < ActiveRecord::Base
  validates :ref, presence: true
  validates :key, uniqueness: true

  has_many :clicks
  belongs_to :user

  before_create :set_key
  before_save :add_http

  def get_url request
    #request.protocol.to_s+request.host.to_s+':'+request.port.to_s+'/'+self.key
    request.protocol.to_s+request.host.to_s+'/'+self.key
  end

  private
  def set_key
    self.key = SecureRandom.hex(3)
  end

  def add_http
    self.ref = 'http://'+self.ref unless self.ref.include? 'http://' or self.ref.include? 'https://'
  end

end
