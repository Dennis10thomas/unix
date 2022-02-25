#Wrte a shell sscript that accepts pathname and creates all the components in that path name as directories. For example, if the script is named as mpc, then command mpc a/b/c/d should create sub direcories a,a/b,a/b/c,a/b/c/d.

if [ $# -ne 0 ]
then
	p=`echo $1 | tr "/" " "`
	for i in $p
	do
		mkdir $i
		cd $i
	done
	echo "Directories created"
else
	echo "Please enter the parameters"
fi

