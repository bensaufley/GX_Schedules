namespace :db do
  task :import_csv => :environment do
    require 'csv'
    puts "Beginning CSV load..."
    if /[A-Z_]/i =~ ENV['model']
      model = ENV['model']
      filename = File.dirname(__FILE__) + "/../assets/#{model.pluralize.downcase}.csv"
      case model.downcase
        when "instructor"
          CSV.foreach(filename, headers: true) do |row|
            i = row.to_hash
            instructor = Instructor.create({
              first_name: i['instructor_first_name'],
              last_name:  i['instructor_last_name']=='NULL' ? nil : i['instructor_last_name'],
              bio:        i['instructor_bio']=='NULL' ? nil : i['instructor_bio'],
              trains:     i['instructor_oneonone'] == 1
            })
            if i['club_id_primary'].to_i > 0 && Club.find(i['club_id_primary'])
              instructor.clubs << Club.find(i['club_id_primary'])
              if i['club_id_secondary'].to_i > 0 && Club.find(i['club_id_secondary'])
                instructor.clubs << Club.find(i['club_id_secondary'])
              end
            else
              instructor.clubs << Club.all
            end
            puts "Added #{instructor.first_name} #{instructor.last_name}. Clubs: #{instructor.clubs.map(&:cAbbrv).join(', ')}"
          end
        when "class"
          CSV.foreach(filename, headers: true) do |row|
            c = row.to_hash
            cl = GxClass.create({
              name:         c['class_name'],
              description:  c['class_description'],
              category:     Category.find_or_create_by(name: c['category'])
            })
            3.times do |x|
              if !c["track_#{x}"].nil?
                cl.tracks << Track.find_or_create_by(name: c["track_#{x}"])
              end
            end
            puts "Added #{cl.name}. Category: #{cl.category.name}; tracks: #{cl.tracks.map(&:name).join(", ")}."
          end
        else
          puts "No case found for model #{model}"
      end
      puts "Done"
    else
      puts "Cannot complete: ENV['model'] not valid"
    end
  end
end