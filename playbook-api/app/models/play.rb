class Play < ApplicationRecord
  belongs_to :playbook
  belongs_to :formation
end
