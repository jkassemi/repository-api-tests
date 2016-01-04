require 'digest/sha1'

2000.times do |i|
  i = i.to_s
  d = Digest::SHA1.hexdigest(i)

  File.open("./#{d}.md", 'w') do |f|
    f << i
  end
end
