rpm_version=1.0.79
rpm_release=0
topdir=$(pwd)
for spec in lenovo_tgtd.spec.in ; do
	cat $spec |
	sed "s/@PROJECT_VERSION@/$rpm_version/g" |
	sed "s/@RPM_RELEASE@/$rpm_release/g" |
	sed "s#@CEPH_SOURCE@#$topdir#g"  > `echo $spec | sed 's/.in$//'`
    done
