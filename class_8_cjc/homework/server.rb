require 'sinatra'
require 'faker'

# get '/' do 
#   erb :hello_world
# end
get '/' do
  # get the index layout
  # erb layout: :index
@homepage_lorem_text = "Lorem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin Irem ipsum dolor some Latin I don't know."
  erb :homepage, layout: :index
end
get '/jobs' do
  @jobs = [ {job: "Developer"},
            {job: "SystemsAdmin"},
            {job: "Programmer"}, 
            {job: "ServerTech"},
            {job: "Engineer"}, 
            {job: "Manager"},
            {job: "Instructor"}, 
            {job: "Trainer"},
            {job: "NetworkTech"},
            {job: "NetworkEngineer"},
            {job: "VirtualEngineer"},
          ]
  # Do Jobs stuff here.
   erb :render_jobs, layout: :index
end

get '/talent' do
  @talent= [ {talent: "Developer"},
            {talent: "SystemsAdmin"},
            {talent: "Programmer"}, 
            {talent: "ServerTech"},
            {talent: "Engineer"}, 
            {talent: "Manager"},
            {talent: "Instructor"}, 
            {talent: "Trainer"},
            {talent: "NetworkTech"},
            {talent: "NetworkEngineer"},
            {talent: "VirtualEngineer"},
          ]
  # Do Jobs stuff here.
   erb :render_talent, layout: :index
end

