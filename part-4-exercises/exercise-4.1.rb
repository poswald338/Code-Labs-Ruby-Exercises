require 'bundler/inline'
gemfile do
    source 'http://rubygems.org'
    gem 'bcrypt'
end
require 'bcrypt'

class User
    # Attributes
    attr_accessor :username, :password, :logged_in

    # Class Variables
    # Stores user instances
    @@users = []

    def initialize(username, password)
        @password = create_hash_digest(password)
        @username = username
        @logged_in = false
        @@users << self
    end

    # Instance Methods
    # checks to see if the user is "logged in"
    def logged_in?
        return @logged_in
    end

    # salts password
    def create_hash_digest(password)
        BCrypt::Password.create(password)
    end

    # Class Methods
    def self.all
        @@users
    end
        # "logs in user"
    def self.login(username, password)
        @@users.each do |user|
            if user.username === username && BCrypt::Password.new(user.password) == password
                user.logged_in = true
                return user
                break
            end
        end
        return nil
    end
end

# Initializing instances
User.new("johndoe123", "password1")
User.new("skywoman456", "password2")
User.new("jimmyjohns789", "password3")


isLoggedIn = false

# Count to keep track of how many login attempts have been tried
tries = 0;

while (isLoggedIn == false)
    # Attempts
    tries += 1
    if(tries > 3)
        puts "Too many attempts, try again later"
        break;
    else
        puts "Attempt #{tries} / 3"
        puts "What is your username?"
        un = gets.chomp
        puts "What is your password?"
        pw = gets.chomp
        user = User.login(un, pw)
        puts user
        if user && user != nil
            isLoggedIn = true
            puts "Logged in successfully!"
        end
    end
end