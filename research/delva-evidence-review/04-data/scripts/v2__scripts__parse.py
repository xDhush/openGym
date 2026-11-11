import sys, xml.etree.ElementTree as ET
root = ET.parse(sys.argv[1]).getroot()
for art in root.findall('.//PubmedArticle'):
    pmid = art.findtext('.//PMID')
    title = ''.join(art.find('.//ArticleTitle').itertext())
    pts = [p.text for p in art.findall('.//PublicationType')]
    abst = ' '.join(((a.get('Label')+': ') if a.get('Label') else '') + ''.join(a.itertext()) for a in art.findall('.//Abstract/AbstractText'))
    print(f"== PMID {pmid} | {title} | PT: {'; '.join(pts)}\n{abst}\n")
