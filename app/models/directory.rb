require 'json'
require 'open-uri'

class Directory
  attr_reader :name, :full_path, :files

  def self.find_by_path(path)
    begin
      new(JSON.parse(open("http://localhost:3000/files/#{path}.json").read))
    rescue
    end
  end

  def initialize(attributes = {})
    @name, @full_path = attributes.values_at('name', 'full_path')
    @files = Array(attributes['files']).map { |file_attributes| OpenStruct.new(file_attributes) }
  end
end
