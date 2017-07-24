class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}

    @@users[username] = password
  end

  def create(filename)
  	time = Time.now
    @files[filename] = time
    puts "File #{filename} of #{@username} was created at #{time}"
  end

  def Computer.get_users
  	return @@users
  end
end

amd = Computer.new(:bill_gates, '123')
amd.create('ssh_key')