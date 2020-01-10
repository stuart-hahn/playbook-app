class Playbook < ApplicationRecord
    has_many :plays, through: :formations
    has_many :formations
end
