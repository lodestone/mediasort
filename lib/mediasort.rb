require 'json'
require 'time'

module Mediasort


  def self.work(options)

    # Optional Arguments
    options[:verbose] = false if options[:verbose].nil?
    options[:progress] = true if options[:progress].nil?

    # Required Arguments
    if !options[:mimetype]
      puts "Missing mimetype argument!"
    end

    if !options[:input]
      puts "Missing input argument!"
    end

    if !options[:output]
      puts "Missing output argument!"
    end

    options[:input] = options[:input].gsub(/^\ /, "\\ ")
    options[:output] = options[:output].gsub(/^\ /, "\\ ")
    options[:input] = options[:input].gsub(/~/, ENV["HOME"])
    options[:output] = options[:output].gsub(/~/, ENV["HOME"])
    options[:input] = options[:input].gsub(/$\//, "")
    options[:output] = options[:output].gsub(/$\//, "")

    entries = Dir["#{options[:input]}/*"]
    entries = entries.length == 0  ? [] : entries
    entries.each do |d|
      begin
        if File.file?(d)
          file = JSON.parse(`exiftool -json "#{d}"`).first
          if file && !file["MIMEType"].nil? && file["MIMEType"][options[:mimetype]]
            date = file["CreateDate"]

            if date
              date = date.split(' ')
              date = date[0].gsub(':', '-') + " " + date[1]
              date = DateTime.parse(date)
              year  = date.year
              month = date.month
              day   = date.day

              month = format('%02d', month)
              day = format('%02d', day)
              path = "#{year}/#{month}/#{year}-#{month}-#{day}"

              basedir = `dirname #{d}`
              # puts "Moving file from #{d} to #{options[:output]}/#{path}"
              mkdir = "mkdir -p #{options[:output]}/#{path}"
              mv    = "mv -n #{d} #{options[:output]}/#{path}/"
              puts mkdir if options[:verbose]
              puts mv if options[:verbose]
              %x[#{mkdir}]
              %x[#{mv}]
              print '⋅' if options[:progress]
            end
          end
        end
      rescue JSON::ParserError
        puts JSON::ParserError
      end


      # TODO figure out the directory path
      # TODO mkdir -p"
      # TODO mv new directory
    end

  end

end
