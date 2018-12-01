while true
do
	cd $1
	rm -rf $2/*
	sleep 1
	for D in $1*;
	do
		cd $1
		cd $D
		cp -ans "$D/"* $2
	done

	cd $2
	chmod 777 *
	sleep 20
done
