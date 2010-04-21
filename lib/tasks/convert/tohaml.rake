namespace :convert do
  desc "Convert layouts to haml"

  task :html2haml do
    layout_dir = 'app/views'
    @files= []
    listfiles(layout_dir, true)
    @files.delete_if {|x| File.extname(x) != '.erb' }

    for file in @files
      out_filename= File.dirname(file)
      out_filename+= '/'+ File.basename(file, ".erb")
      out_filename+= ".haml"
      sh "html2haml #{file} #{out_filename}"
      # File.delete(file)
    end
    # sh "html2haml app/views/layouts/application.html.erb app/views/layouts/application.html.haml"
    # File.delete("app/views/layouts/application.html.erb")
  end
  
  task :css2sass do
    css_dir = 'public/stylesheets'
    css_out_dir = 'public/stylesheets/sass'
    @files= []
    listfiles(css_dir, true)
    @files.delete_if {|x| File.extname(x) != '.css' }
    
    for file in @files
      out_filename = File.basename(file, ".css")
      out_filename+= ".sass"
      #sh "css2sass #{file} #{css_out_dir}/#{out_filename}"
      # File.delete(file)
    end
  end


  def listfiles(dirname, recursive=false)
    d = Dir.new(dirname)
    d.each {|x|
      if (x!='.' && x!='..')
        if File.directory?(dirname+File::SEPARATOR+x)
          if recursive
            listfiles(dirname+'/'+x)
          end
        elsif
          @files.push "#{dirname+File::SEPARATOR+x}"
        end
      end
    }
  end

end