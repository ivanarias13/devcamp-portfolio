module CurrentUserConcern
  #extend ActiveSupport::Concern

  def current_user
     super || usuario_invitado
  end

  def usuario_invitado
    OpenStruct.new(name: "Usuario Invitado",
                  first_name:"Invitado",
                  last_name: "Usuario",
                  email: "invitado@ejemplo.com")
  end
end

