class HomeController < ApplicationController
  require 'enums/Note_Enum'
  def index
    # puts "TEST"
    # puts NoteEnum.statuses
    # puts NoteEnum.makings
    @statuses = NoteEnum.statuses
    @makings = NoteEnum.makings
    puts "+++++++++++++++++++++++++++++++++++++++++++++++++++"
    @makings.each do |n|
      puts n[0]
    end
    puts "---------------------------------------------------"
     @statuses.each do |s|
      puts s[0]
     end
     puts "++++++++++++++++++++++++++++++++++++++++++++++++++"

    puts NoteEnum.imgs
  end
end
