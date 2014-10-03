class AsciiImporter

  def self.run

    files = Dir.entries('ascii')
    files.shift(2)
    files.each do |file_name|
      file_name_no_ext, ext = file_name.split('_')
      pic = Picture.create(name: file_name_no_ext)
      index = 0
      string = ""
      File.open("ascii/" + file_name).each do |line|
        string << line
        if index == 20
          pic.parts.create(ascii: string)
          index = 0
          string = ""
        end
        index += 1
      end
    end


  end


end
