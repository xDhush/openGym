import sys, xml.etree.ElementTree as ET
ns={'a':'http://www.w3.org/2005/Atom','ax':'http://arxiv.org/schemas/atom'}
t=ET.parse(sys.argv[1]).getroot()
for e in t.findall('a:entry',ns):
    i=e.find('a:id',ns).text.split('/abs/')[-1]
    title=' '.join(e.find('a:title',ns).text.split())
    pub=e.find('a:published',ns).text[:10]
    upd=e.find('a:updated',ns).text[:10]
    jr=e.find('ax:journal_ref',ns); doi=e.find('ax:doi',ns); cm=e.find('ax:comment',ns)
    auth=[a.find('a:name',ns).text for a in e.findall('a:author',ns)]
    print(f"{i} | {title} | {auth[0] if auth else ''} et al ({len(auth)}) | pub {pub} upd {upd} | JR: {jr.text if jr is not None else '-'} | DOI: {doi.text if doi is not None else '-'} | C: {' '.join(cm.text.split())[:160] if cm is not None else '-'}")
