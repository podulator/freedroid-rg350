#"/bin/bash
./configure ARCH=mips --host=mips
make clean
rm -f deploy/bin/freedroid
make
mv src/freedroid deploy/bin/freedroid
tree deploy/
./make_opk.sh
scp freedroid-classic.opk root@10.1.1.2:/media/data/apps
