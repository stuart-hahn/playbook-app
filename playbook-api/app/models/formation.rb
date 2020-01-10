class Formation < ApplicationRecord
    has_many :plays
    belongs_to :playbook
end
