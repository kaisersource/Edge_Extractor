BEGIN{ FS="[.?!][[:space:]]+";RS="[\n]"; FPAT="([^.?!,:-][[:space:]]+[[:upper:]][']{0,1}[[:upper:]]*[[:lower:]]+)+";OFS=", "}
{
	for (i=1;i<=NF;++i) {
		w=$i; 
		gsub(/[[:space:]]+/," ",w);
		w=substr(w,2); words[w] 
	}
}

{ 
	for (w1 in words) { 
		for (w2 in words) 
			if(w1 != w2)
			print w1,w2
		delete words[w1]
	}
}
