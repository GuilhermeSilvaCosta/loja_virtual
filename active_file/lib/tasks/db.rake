require 'fileutils'

desc "Limpa todas as revistas da pasta db/revistas"
namespace :db do
    task :clear, [:folder] do |task, args|
        FileUtils.rm Dir["db/#{args.folder}/*.yml"]
    end
end
