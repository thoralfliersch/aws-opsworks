# apt packages
packages = %w{
    htop
    screen
}

packages.each do |name|
    package name
end
