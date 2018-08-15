class Record < ApplicationRecord
  belongs_to :state
  belongs_to :import
end
