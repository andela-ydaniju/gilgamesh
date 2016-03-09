require "algernon/routes/finder"

class Route < Algernon::Routes::Route
  def initialize
    path_regex = Regexp.new("/todos/[a-zA-Z0-9_]+")
    to = "todos#index"
    url_placeholder = { 2 => "id" }

    super(path_regex, to, url_placeholder)
  end
end
