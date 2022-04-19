echo "Installing extra packages from file..."
dnf -y install $(cat packages.txt)