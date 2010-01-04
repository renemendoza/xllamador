class User < ActiveRecord::Base
  ROLES = %w[admin supervisor user]
  acts_as_authentic

  def roles=(roles)
    self.roles_mask = ( roles & ROLES ).map { |r| 2**ROLES.index(r) }.sum  
  end

  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }  
  end

  def role_symbols  
    roles.map(&:to_sym)  
  end 

  def role?(role)
    roles.include? role.to_s
  end


end
