SUMMARY = "RPi core class + serial port access + ssh access"

inherit rpi-core

IMAGE_FEATURES += "ssh-server-dropbear debug-tweaks"

configure_sshd() {
	# disable password
	# mkdir -p ${IMAGE_ROOTFS}/etc/ssh
	# echo "PasswordAuthentication no" >> ${IMAGE_ROOTFS}/etc/ssh/sshd_config

	# create keys in tmp/deploy/keys
	mkdir -p ${DEPLOY_DIR}/keys
	if [ ! -f ${DEPLOY_DIR}/keys/${IMAGE_BASENAME}-sshroot ]; then
	/usr/bin/ssh-keygen -t rsa -N '' -f ${DEPLOY_DIR}/keys/${IMAGE_BASENAME}-sshroot
	fi

	# add public key to auth keys
	L_ROOT_SSH_DIR="${IMAGE_ROOTFS}/home/root/.ssh"
	L_ROOT_SSH_AUTH_KEYS="${L_ROOT_SSH_DIR}/authorized_keys"
	L_PI_SSH_DIR="${IMAGE_ROOTFS}/home/pi/.ssh"
	L_PI_SSH_AUTH_KEYS="${L_PI_SSH_DIR}/authorized_keys"

	mkdir -p ${L_ROOT_SSH_DIR}
	mkdir -p ${L_PI_SSH_DIR}
	cat ${DEPLOY_DIR}/keys/${IMAGE_BASENAME}-sshroot.pub >> ${L_ROOT_SSH_AUTH_KEYS}
	cat ${DEPLOY_DIR}/keys/${IMAGE_BASENAME}-sshroot.pub >> ${L_PI_SSH_AUTH_KEYS}

	chown -R 1000:1000 ${L_PI_SSH_DIR}
}

configure_sudoers() {
	sed -i -r 's/# %sudo[^ ](.*)/%sudo \1/g' ${IMAGE_ROOTFS}/etc/sudoers
}

ROOTFS_POSTPROCESS_COMMAND += "configure_sshd; configure_sudoers;"

# add user: pi, password: openssl passwd pi
inherit extrausers
EXTRA_USERS_PARAMS = "\
	useradd -u 1000 -p eCJuCaMC1oVFc pi; \
	groupadd gpio; \
	usermod -a -G dialout pi; \
	usermod -a -G gpio pi; \
	usermod -a -G sudo pi; \
	usermod -a -G video pi; \
"

