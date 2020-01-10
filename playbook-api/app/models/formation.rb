class Formation < ApplicationRecord
    has_many :plays
    has_many :playbooks, through: :plays
end
