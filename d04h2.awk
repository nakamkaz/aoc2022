BEGIN{
	count = 0;
}
{
        al = split($0,arr,",")
        g1=arr[1]; g2=arr[2]
        split(g1,g1a,"-")
        split(g2,g2a,"-")
        g1start=g1a[1]+0
        g1end=g1a[2]+0
        g2start=g2a[1]+0
        g2end=g2a[2]+0
	if ( ( (g1end>=g2start ) &&  (g1end<=g2end) ) ||
	     ( (g1start<=g2end ) &&  (g1start>=g2start) ) ||
	     ( (g1start<=g2start) && (g1end>=g2end) ) ||
             ( (g1start>=g2start) && (g1end<=g2end) ) 	  ){
		count++
	}

}
END{
	print count
}
