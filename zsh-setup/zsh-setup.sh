#!/bin/bash
sudo apt update
sudo apt install zsh git curl wget

# echo "Installing Fira Mono Font..."
# if [[ ! -d /usr/local/share/fonts ]]
# then
#     sudo mkdir /usr/local/share/fonts
# fi
# sudo mkdir /usr/local/share/fonts/f
# wget https://github.com/shihab4t/computer-setup/raw/main/fira-mono-regular-nerd-font.otf
# sudo cp fira-mono-regular-nerd-font.otf /usr/local/share/fonts/f/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git /home/$USER/.oh-my-zsh/custom/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

curl -fLo ~/.zshrc https://raw.githubusercontent.com/shihabmahamud/computer-setup/main/.zshrc
curl -fLo ~/.p10k.zsh https://raw.githubusercontent.com/shihabmahamud/computer-setup/main/.p10k.zsh
chsh -s /bin/zsh
