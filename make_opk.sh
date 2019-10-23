#!/bin/sh

OPK_NAME="freedroid-classic.opk"

echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=Freedroid classic
Comment=Freedroid classic
Exec=run.sh
Terminal=false
Type=Game
StartupNotify=true
Icon=paraicon
Categories=games;
EOF

# create opk
FLIST="deploy/*"
FLIST="${FLIST} default.gcw0.desktop"
FLIST="${FLIST} deploy/graphics/paraicon.png"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop
