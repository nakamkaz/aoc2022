BEGIN{
ecal=0;
maxcal1=0
maxcal2=0
maxcal3=0
}

$0~/^$/ {
	if (maxcal1<=ecal) {
		maxcal3=maxcal2;
		maxcal2=maxcal1;
		maxcal1=ecal;
	} else if (maxcal2<=ecal) {
		maxcal3=maxcal2;
		maxcal2=ecal;		
	} else if (maxcal3<=ecal){
		maxcal3=ecal;			
	}
	ecal=0;
}

$0!~/^$/ {
	ecal=ecal+$0;
}
END{
print maxcal1+maxcal2+maxcal3
}
