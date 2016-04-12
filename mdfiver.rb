require 'digest'

input_file_path = ARGV[0]
output_path = File.dirname(input_file_path)
filename = File.basename(input_file_path).split('.').first

File.open(File.join(output_path, filename) + '.MD5', 'w') { |f| f.write Digest::MD5.hexdigest File.read(input_file_path)}
