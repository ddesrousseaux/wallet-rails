namespace :wallet do
  desc "Number of models"

  task :modelcount do
    puts getmodels
  end
  
  def getmodels
    modeldir = RAILS_ROOT+ '/app/models'
    files= Dir.entries(modeldir)
    files.delete_if {|x| File.extname(x) != '.rb' } 
    filescount= files.count
  end
end