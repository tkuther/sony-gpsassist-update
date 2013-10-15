#!/bin/bash

PREFIX="${PREFIX:-/usr}"
SYSCONFDIR="${SYSCONFDIR:-/etc}"
DESTDIR="${DESTDIR:-}"

install -Dm755 sony-gpsassist-update ${DESTDIR}${PREFIX}/bin/sony-gpsassist-update
install -Dm644 etc/sony-gpsassist-update.cfg ${DESTDIR}${SYSCONFDIR}/sony-gpsassist-update.cfg
install -Dm644 etc/udev/rules.d/99-sony-gpsassist-update.rules ${DESTDIR}${SYSCONFDIR}/udev/rules.d/99-sony-gpsassist-update.rules
sed -i -e "s/@@PREFIX@@/$PREFIX/g" ${DESTDIR}${SYSCONFDIR}/udev/rules.d/99-sony-gpsassist-update.rules