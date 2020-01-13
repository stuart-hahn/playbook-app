class FormationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  belongs_to :playbook
end
