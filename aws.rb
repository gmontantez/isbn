require 'rubygems'
require 'aws-sdk-s3'
require 'csv'

load './local_env.rb' if File.exist?('./local_env.rb')

def connect_to_s3()
client = Aws::S3::Client.new(
 region: ENV['AWS_REGION'],
   secret_access_key: ENV['S3_SECRET'],
   access_key_id: ENV['S3_KEY']
 )
 file = "isbn_file.csv"
 bucket = 'storageareagmz'
 s3 = Aws::S3::Resource.new(client: client)
 obj = s3.bucket(bucket).object(file)
   File.open('isbn_file.csv', 'rb') do |file|
     obj.put(body: file)
   end
end

def connect_to_s3_2()
client = Aws::S3::Client.new(
 region: ENV['AWS_REGION'],
   secret_access_key: ENV['S3_SECRET'],
   access_key_id: ENV['S3_KEY']
 )
 file = "isbn_file.csv"
 bucket = 'storageareagmz'
 s3 = Aws::S3::Resource.new(client: client)
 obj = s3.bucket(bucket).object(file)
   File.open('isbn_file2.csv', 'rb') do |file|
     obj.put(body: file)
   end
end



