pkgname="bean-appearance-glass-grub-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Glass Grub Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/samwhelp/grub-theme-glass-remix/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-wincity/tree/main/packages/bean-appearance-glass-grub-theme"
depends=()
pacdeps=()
replace=()




package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd

	#echo
	#echo cd "${_archive}"
	#cd "${_archive}"

	echo
	echo cd "grub-theme-glass-remix-main"
	cd "grub-theme-glass-remix-main"

	local themes_dir_path="${pkgdir}/usr/share/grub/themes"


	echo
	echo mkdir -p "${themes_dir_path}"
	mkdir -p "${themes_dir_path}"


	#echo
	#echo ./install.sh -t all -d "${themes_dir_path}"
	#./install.sh -t all -d "${themes_dir_path}"




	echo
	echo cp -rfT . "${themes_dir_path}/grub-theme-glass"
	cp -rfT . "${themes_dir_path}/grub-theme-glass"




	echo
	echo cd "${OLDPWD}"
	cd "${OLDPWD}"
	echo




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
