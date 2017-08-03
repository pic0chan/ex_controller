class Switch < ApplicationRecord
  validates :hostname, presence: true, length: { maximum: 30 }, uniqueness: true, allow_nil: false
  validates :mng_ipv4, presence: true, uniquenss: true, allow_nil: false

  class << self

    # login 可能か確認 ( login password の保存しないといけない. 環境変数で保存？)
    def is_login?
    end 

  end
end
