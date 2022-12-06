{
	if ($0~/\[|\]/){
			for (nc=1;nc<=9;nc++){
				col[nc]=substr($0,4*nc-2,1) col[nc]
				gsub(/ /,"",col[nc])
				print $0
				}
		}
	if ($0~/move|from|to/){
		gsub(/move|from|to/,"",$0)
		split($0,arr," ")
		kosu=arr[1]
		from=arr[2]
		to=arr[3]
		for (i=1;i<=kosu;i++){
			col[to]=col[to] substr(col[from],length(col[from]),1);
			col[from]=substr(col[from],1,length(col[from])-1)
			print "# ",col[from]
			print "* ",col[to]
			}
		}
}
END{
	for (i=1;i<=9;i++){
		printf substr(col[i],length(col[i]),1)
		}
		print ""
}
