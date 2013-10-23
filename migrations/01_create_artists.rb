Sequel.migration do
  up do
    puts "Hey you just ran the create_artist migration!"
  end

  down do
    puts "Hey you just rolled-back the create_artist migration!"
  end

   change do
    create_table(:artists) do
      primary_key :id
      String :name
      String :genre
      Integer :age
      String :hometown
    end
  end

end