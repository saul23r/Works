require 'awesome_print'

class User

  attr_reader :personal_info, :contact_info, :role



    def initialize(personal_info, contact_info, role)
      @personal_info = personal_info
      @contact_info = contact_info
      @role = role

    end
end

class Role
    attr_reader :permissions

    def initialize(*permissions)
      @permissions = permissions
    end

    def add_permission(permission)
      @permissions << permission
    end

    def permissions_for?(key)
      @permissions.include? key
    end


end

admin_personal_info = {'name'=>'Juan','last_name'=>'Granados','birth_year'=>1982}
admin_contact_info = {'email'=>'lushsk8@hotmail.com','mob'=>'4681144359'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info, admin_contact_info, admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions