cat governo.json | grep -oP "\b([A-Z][a-z']*)(\s[A-Z][a-z']*)*\b | ^(\s*.*?\s).*" > Tabella_nodi.csv
