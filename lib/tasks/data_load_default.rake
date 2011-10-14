namespace :data do
  namespace :load do
    namespace :default do
      # :all does not include users as that task may not be safe for all environments
      desc "Load all default data"
      task :all => %w(users).map{ |task| "data:load:default:#{task}" } + %w()
      task :services => :environment do
        ['Tattooing', 'Piercing', 'Basic Body Modification', 'Scarification', 'Tattoo Coverup', 'Aftercare Consultation', 'Tattoo Design'].each do |service|
          puts "#{service}"
          Service.create(:name => service)
        end
      end


      task :tattoo_styles => :environment do
        ['Abstract','Organic','Dotwork','Black&Grey','Color','Realism','Realistic Trash Polka','Celtic','Lettering','Maori','Asian/Japanese','Kanji','Old school',
        'new school','Graffiti','Graphical','Tribal','Pinup','Polynesian','Biomechanical','Portrait','Surrealism',].each do |style|
          puts "#{style}"
          TattooStyle.create(:name => style.titleize)
        end
      end


      desc "Languages"
      task :languages => :environment do
        Language.create(:name => "English")
        Language.create(:name => "Chinese")
        Language.create(:name => "Spanish" )
        Language.create(:name => "French")
        Language.create(:name => "Italian")
        Language.create(:name => "German")
        Language.create(:name => "Hindi")
        Language.create(:name => "Korean")
        Language.create(:name => "Vietnamese")
        Language.create(:name => "Japanese")
      end

    end #namespace :default
  end #namespace :load
end #namspace :data
