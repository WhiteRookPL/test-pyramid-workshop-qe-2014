module Ajax

  def waitForPendingRequests(session)
    while true
    	sleep 0.1

      if session.evaluate_script('$.active === 0')
        break
      end
    end
  end

end