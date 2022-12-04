BEGIN{
	count = 0;
##	for (i =1 ;i<=9;i++){
##	grpa[i]=0
##	grpb[i]=0
##	}

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
        
        if ( ((g1start<=g2start) && (g1end>=g2end))||
        ((g1start>=g2start) && (g1end<=g2end))) 
        {
        count++;
        }
        
#	for (k in grpa) delete grpa[k]   
#	for (k in grpb) delete grpb[k]   

}
END{
	print count
}
