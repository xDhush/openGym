import re,sys,html
t=open(sys.argv[1],encoding='utf-8',errors='ignore').read()
t=re.sub(r'<script.*?</script>|<style.*?</style>','',t,flags=re.S)
t=html.unescape(re.sub(r'<[^>]+>',' ',t)); t=re.sub(r'\s+',' ',t)
for pat in sys.argv[2:]:
    for m in list(re.finditer(pat,t))[:3]:
        print('['+pat+'] ...',t[max(0,m.start()-250):m.end()+350],'...\n')
