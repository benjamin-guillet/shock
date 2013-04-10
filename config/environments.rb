configure :development, :test do
  set :database, 'sqlite3:///db/development.db'
end
 
configure :production do
  # Database connection
  db = URI.parse(ENV['dDATABASE_URL'] || 'postgres://localhost/mydb')
    
  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end
