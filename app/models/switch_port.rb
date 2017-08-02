class SwitchPort < ApplicationRecord
  belongs_to :switch
  belongs_to :internet_line
end
