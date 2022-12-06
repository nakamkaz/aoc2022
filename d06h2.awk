{
	dsbf=$0
	len = length(dsbf)
	for (i=1;i<=len;i++){
		for (j=0;j<=13;j++){
		spair[substr(dsbf,i+j,1)]++
		}
		detdup=0;
		for (x in spair){
			if (spair[x]>=2){
				detdup=1;
				}	
		}
	if (detdup==0){
		print i+13 " ",substr(dsbf,i,14)
		exit
		}
		for (x in spair){ delete spair[x]}
	}
}
