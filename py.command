# Python Packages
#-------------------- 

# Installing Cactus, Static site generator
sudo easy_install cactus

# Upgrading pip
pip install -U pip

eggs=(
	Pygments 
	Markdown 
	pelican 
	jinja2-cli
)

pip install "${eggs[@]}"