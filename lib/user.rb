class User
  @@registered_users = 0

  def initialize user_data
    @@registered_users += 1
    @id = @@registered_users
    @email = user_data[:email]
    @forename = user_data[:forename]
    @surname = user_data[:surname]
    @created = Time.now
  end

  def update user_data
    @id = user_data[:id]
    @email = user_data[:email]
    @forename = user_data[:forename]
    @surname = user_data[:surname]
    @updated = Time.now
  end

  def get_id
    return_id = @id
    return_id
  end

  def get_email
    @email.dup
  end

  def get_forename
    @forename.dup.capitalize
  end

  def get_surname
    @surname.dup.capitalize
  end

  def get_created
    @created.dup
  end
end