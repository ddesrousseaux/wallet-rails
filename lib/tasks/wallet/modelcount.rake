namespace :wallet do
  desc "Number of models"

  task :modelcount do
    puts getmodels
  end
  
  def getmodels
    modeldir = Dir.new(RAILS_ROOT+ '/app/models')
    files= modeldir.entries
    files.delete_if {|x| File.extname(x) != '.rb' } 
    filescount= files.count
  end
end