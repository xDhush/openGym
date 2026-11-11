import json,sys,re
d=json.load(open('abs.json'))
for p in sys.argv[1:]:
    r=d.get(p,'MISSING '+p)
    # strip author info / affiliations block
    r=re.sub(r'Author information:.*?(?=\n\n)', '[aff]', r, flags=re.S)
    r=re.sub(r'\n\n(Copyright|©|Comment in|Erratum|Conflict of interest|DOI:).*', '', r, flags=re.S) if False else r
    print('=====',p); print(r[:4000])
