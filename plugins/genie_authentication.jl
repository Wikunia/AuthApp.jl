using Genie

import AuthApp.Users
import AuthApp.AuthenticationController
import SearchLight: findone

export current_user
current_user() = findone(Users.User, id = get_authentication())

route("/show_login", AuthenticationController.show_login, named = :show_login)
route("/login", AuthenticationController.login, method = POST, named = :login)
route("/success", AuthenticationController.success, method = GET, named = :success)
route("/logout", AuthenticationController.logout, named = :logout)

#===#

# UNCOMMENT TO ENABLE REGISTRATION ROUTES

# route("/register", AuthenticationController.show_register, named = :show_register)
# route("/register", AuthenticationController.register, method = POST, named = :register)