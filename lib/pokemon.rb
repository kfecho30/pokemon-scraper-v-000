class Pokemon
  attr_accessor :id, :name, :type, :db
  def initialize(name = nil, type = nil, db = nil)
    @name = name,
    @type = type,
    @db = db
  end

  def self.save(id, name, type)
    database_connection.execute("INSERT INTO pokemon(id, name, type) VALUES (?, ?, ?)", id, name, type)
  end
end
