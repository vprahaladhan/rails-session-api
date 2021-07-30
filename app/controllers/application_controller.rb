class ApplicationController < ActionController::API
  def login
    if session[:id].nil?
      puts "Session ID 1 >> #{session[:id]}"
      session[:id] = 1
    end
    puts "Session ID 2 >> #{session[:id]}"
  end

  def logout
    puts "Session ID before logout >> #{session[:id]}"
    reset_session
    puts "Session ID after logout >> #{session[:id]}"
  end
end
