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
	ll=length($0)
	h1sta=1
	h1end=ll/2
	h2sta=h1end+1
	h2end=ll
	h1str= substr($0,h1sta,h1end);
	h2str= substr($0,h2sta,h2end);
	hl = length(h1str) 
	print "" h1str , h2str
	for (j=1;j<=hl;j++){
		s=substr(h1str,j,1)
		umap[s]=1 
	}
	for (j=1;j<=hl;j++){
		q=substr(h2str,j,1)
		if (umap[q]==1) {
			umap[q]=2
			printf ("%s : value %i\n",q,cmap[q])
			tp += cmap[q]
		}
	}
	for (k in umap) delete umap[k]
	
}
END{
	print tp
}
