pkgname="bean-appearance-cover-grub-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Cover Grub Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/samwhelp/grub-theme-cover-remix/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-grub/tree/main/packages/bean-appearance-cover-grub-theme"
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
	echo cd "grub-theme-cover-remix-main"
	cd "grub-theme-cover-remix-main"

	local themes_dir_path="${pkgdir}/usr/share/grub/themes"


	echo
	echo mkdir -p "${themes_dir_path}"
	mkdir -p "${themes_dir_path}"


	#echo
	#echo ./install.sh -t all -d "${themes_dir_path}"
	#./install.sh -t all -d "${themes_dir_path}"




	echo
	echo cp -rfT . "${themes_dir_path}/grub-theme-cover"
	cp -rfT . "${themes_dir_path}/grub-theme-cover"




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
