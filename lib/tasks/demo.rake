desc 'Ring the bell'
task :ring do
  puts "Bell is ringing."
end

task :wait do
  puts "u r waiting"
end
task :come do
  puts "person is coming."
end



 
desc 'Enter home'
task :enter do
  puts "Entering home!"
end

task :welcome => [:ring, :wait, :enter,:come] do
  puts "u r welcome"
end
