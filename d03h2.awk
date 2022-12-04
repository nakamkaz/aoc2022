BEGIN{
	tp = 0;
	for (i=1;i<=26;i++){
		lc=sprintf("%c",96+i); # Lower alphabet a:1 b:2 ...  z:26
		uc=sprintf("%c",64+i); # Upper alphabet A:27 B:28 ... Z:52
		cmap[lc]=i
		cmap[uc]=i+26
	}	

}
{
	turn=NR%3 # 1 2 0 1 2 0 ...
 	eb=$0
	hl = length(eb) 
	print " " , turn ", " eb

    if (turn==1) {
	for (j=1;j<=hl;j++){
		s=substr(eb,j,1)
		umap[s]=1
	}
     }
    if (turn==2) {
	for (j=1;j<=hl;j++){
		s=substr(eb,j,1)
		if (umap[s]==1) {
			umap[s]=2
		}
	}
     }
    if (turn==0) {
	for (j=1;j<=hl;j++){
		s=substr(eb,j,1)
		if (umap[s]==2) {
			umap[s]=3
			printf ("%s : value %i\n",s,cmap[s])
        		if (umap[s]==3) { tp+=cmap[s]}
		}
	}


	for (k in umap) delete umap[k]
     }
     

	
}
END{
	print tp
}
