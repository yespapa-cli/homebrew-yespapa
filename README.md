# Homebrew Tap & APT Repository for YesPaPa

## Homebrew (macOS)

```bash
brew tap yespapa-cli/yespapa
brew install yespapa
```

## APT (Debian/Ubuntu)

```bash
# Add GPG key and repository
curl -fsSL https://yespapa-cli.github.io/homebrew-yespapa/gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/yespapa.gpg
echo "deb [signed-by=/usr/share/keyrings/yespapa.gpg arch=amd64] https://yespapa-cli.github.io/homebrew-yespapa/apt stable main" | sudo tee /etc/apt/sources.list.d/yespapa.list

# Install
sudo apt-get update
sudo apt-get install yespapa
```

## npm

```bash
npm install -g yespapa
```
