task :default do
    FileList['*/test.rb'].each { |file| ruby file }
end