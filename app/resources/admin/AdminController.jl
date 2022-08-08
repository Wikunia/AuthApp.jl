module AdminController

using GenieAuthentication, Genie.Renderer, Genie.Exceptions, Genie.Renderer.Html

function index()
  authenticated() || throw(ExceptionalResponse(redirect(:show_login)))
  h1("Welcome Admin") |> html
end

end