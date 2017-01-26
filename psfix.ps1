$currentUser = (whoami /fqdn).split(",")[0].split("=")[1].ToLower()
cd C:\Users\$currentUser\Desktop\test

git commit -a --no-verify --allow-empty-message --no-edit