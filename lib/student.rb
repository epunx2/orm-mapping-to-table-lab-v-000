class Student

  attr_accessor :name, :grade, :id = nil
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def create_table
      sql = <<-SQL
        CREATE TABLE IF NOT EXISTS students(
          id INTEGER PRIMARY KEY,
          name TEXT,
          grade INTEGER
        )
        SQL
    DB[:conn].execute(sql)
  end

  
  
end
