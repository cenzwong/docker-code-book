apt update && apt upgrade -y
apt install curl -y
curl -fsSL https://code-server.dev/install.sh | sh
mkdir -p ~/.config/code-server/
curl https://raw.githubusercontent.com/cenzwong/docker-cook-book/main/Dockerfile/code-server/cdn/config.yaml -o ~/.config/code-server/config.yaml
sed -i 's/127.0.0.1/0.0.0.0/' ~/.config/code-server/config.yaml
sed -i 's/^password: .*/password: password/g' ~/.config/code-server/config.yaml
code-server



