def random_password()
  (0...8).map { (65 + rand(26)).chr }.join
end