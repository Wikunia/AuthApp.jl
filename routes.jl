using Genie.Router
using AuthApp.AdminController

route("/") do
  serve_static_file("welcome.html")
end