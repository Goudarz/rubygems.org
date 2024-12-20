class Api::NilClassPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      raise Pundit::NotDefinedError, "Cannot scope NilClass"
    end
  end

  def destroy?
    deny t(:forbidden)
  end
end
