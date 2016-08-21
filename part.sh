DISK="/dev/vdb"


parted -s $DISK -- mklabel msdos mkpart extended 1m -1m

parted -s $DISK mkpart logical  linux-swap 2m 100m

parted -s $DISK mkpart logical 101m 200m #6
parted -s $DISK mkpart logical 201m 300m 
parted -s $DISK mkpart logical 301m 400m 
parted -s $DISK mkpart logical 401m 500m 


parted -s $DISK mkpart logical 501m 600m #9
parted -s $DISK mkpart logical 601m 700m #10
parted -s $DISK mkpart logical 701m 800m 


parted -s $DISK set 10  lvm on 
parted -s $DISK set 11  lvm on 
parted -s $DISK set 12  lvm on 


parted -s $DISK mkpart logical 801m 900m #10
parted -s $DISK mkpart logical 901m 1000m

 
parted -s $DISK set 13  raid on 
parted -s $DISK set 14  raid on 
