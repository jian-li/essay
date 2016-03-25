
if [ ! -d "/usr/share/fonts/winFonts" ]; then
	sudo mkdir -p /usr/share/fonts/winFonts
fi

sudo cp ./fonts/*.ttf /usr/share/fonts/winFonts &&
        
sudo chmod 644 /usr/share/fonts/winFonts/*.ttf &&
        
cd /usr/share/fonts/winFonts &&

mkfontscale && mkfontdir && fc-cache -fv

fc-list :lang=zh-cn
