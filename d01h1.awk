BEGIN{
ecal=0;
maxcal=0;
}
$0~/^$/ {
	if (maxcal<=ecal) {
		maxcal=ecal;
	}
		ecal=0;
}
$0!~/^$/ {
	ecal=ecal+$0;
}
END{
print maxcal;
}

