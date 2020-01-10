class Playbook < ApplicationRecord
    has_many :plays
    has_many :formations, through: :plays
end
