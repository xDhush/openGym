import json,sys,re
d=json.load(open('abs.json'))
lim=int(sys.argv[1])
for p in sys.argv[2:]:
    r=d.get(p,'MISSING')
    head=r.split('\n\n')[0].replace('\n',' ')
    parts=r.split('\n\n')
    # abstract body: the longest paragraph
    body=max(parts,key=len).replace('\n',' ')
    print('=====',p,'|',head[:160]); print(body[:lim]); print()
