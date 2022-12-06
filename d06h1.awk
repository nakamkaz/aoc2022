{
	dsbf=$0
	len = length(dsbf)
	for (i=1;i<=len;i++){
		spair[substr(dsbf,i,1)]++
		spair[substr(dsbf,i+1,1)]++
		spair[substr(dsbf,i+2,1)]++
		spair[substr(dsbf,i+3,1)]++
		detdup=0;
		for (x in spair){
			if (spair[x]>=2){
				detdup=1;
				}	
		}
	if (detdup==0){
		print i+3 " ",substr(dsbf,i,4)
		exit
		}
		for (x in spair){ delete spair[x]}
	}
}
