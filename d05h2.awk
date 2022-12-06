{
	if ($0~/\[|\]/){
			for (nc=1;nc<=9;nc++){
				col[nc]=substr($0,4*nc-2,1) col[nc]
				gsub(/ /,"",col[nc])
				}
		}
	if ($0~/move|from|to/){
		gsub(/move|from|to/,"",$0)
		split($0,arr," ")
		kosu=arr[1]
		from=arr[2]
		to=arr[3]

		stk=substr(col[from],length(col[from])-kosu+1,kosu)	
		col[to]=col[to] stk
		col[from]=substr(col[from],0,length(col[from])-kosu)
		print "# ",col[from]
		print "* ",col[to]
		}
}
END{
	for (i=1;i<=9;i++){
		printf substr(col[i],length(col[i]),1)
		}
		print ""
}
