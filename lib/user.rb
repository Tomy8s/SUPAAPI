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
    if user_data[:email] then @email = user_data[:email] end
    if user_data[:forename] then @forename = user_data[:forename] end
    if user_data[:surname] then @surname = user_data[:surname] end
    @updated = Time.now
    self.dup
  end

  def display_json
    hash = {
      id: @id,
      email: @email,
      forename: @forename.capitalize,
      surname: @surname.capitalize,
      created: @created,
      updated: @updated
    }
    hash.to_json
  end

  def get_id
    return_id = @id
    return_id
  end
end