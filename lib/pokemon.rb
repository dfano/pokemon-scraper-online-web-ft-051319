class Pokemon
  attr_accessor :id, :name, :type, :hp, :db

<<<<<<< HEAD
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
=======
  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)",name,type)
>>>>>>> 1b90b3cc2b7a1a0cf6fc51804ab6a977012b45bb
  end

  def self.find(id_num, db)
    pokemon_info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).flatten
<<<<<<< HEAD
    Pokemon.new(id: pokemon_info[0], name: pokemon_info[1], type: pokemon_info[2], hp: pokemon_info[3], db: db)
  end

  def initialize(id:, name:, type:, hp: nil, db:)
    @id, @name, @type, @hp, @db = id, name, type, hp, db
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end
=======
    Pokenmon.new(id: pokemon_info[0], name: pokemon_info[1], type: pokemon_info[2], hp: pokemon_info[3], db: db)
  end

  def initlize (id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id )
  end

>>>>>>> 1b90b3cc2b7a1a0cf6fc51804ab6a977012b45bb
end
