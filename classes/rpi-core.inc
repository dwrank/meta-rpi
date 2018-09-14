
configure_profile() {
	install -o root -g root -m 644 ${CUSTOM_FILES_DIR}/bashrc ${IMAGE_ROOTFS}/etc/skel/.bashrc
	install -o root -g root -m 644 ${CUSTOM_FILES_DIR}/profile ${IMAGE_ROOTFS}/etc/skel/.profile
	install -o root -g root -m 644 ${IMAGE_ROOTFS}/etc/skel/.profile ${IMAGE_ROOTFS}/home/root/.
	install -o root -g root -m 644 ${CUSTOM_FILES_DIR}/bashrc ${IMAGE_ROOTFS}/home/root/.bashrc
}

configure_systemd_networking() {
	rm ${IMAGE_ROOTFS}/etc/systemd/system/networking.service
	install -d 755 ${IMAGE_ROOTFS}/etc/systemd/system/network.target.wants
	ln -sfr ${IMAGE_ROOTFS}/etc/init.d/networking ${IMAGE_ROOTFS}/etc/systemd/system/network.target.wants/networking.service
}
