namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    
    require 'csv'    

    csv_text = File.read('/Users/lyonr01/rubyApps/grim1/lib/tasks/profilestidy.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      row = row.to_hash.with_indifferent_access
      Profile.create!(row.to_hash.symbolize_keys)
    end
              
  end
end