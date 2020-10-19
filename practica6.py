import requests
from bs4 import BeautifulSoup as bs


for i in range (5,10,1):
    page = requests.get ("https://www.uanl.mx/noticias/page/"+str(i))
##    print (page.status_code)                                #Status code 200 significa "Ok", 
    soup = bs(page.content,"html.parser")                   #Clase beautifulSoup
    fa = soup.select("h3 a")
    for p in fa:
##        print (p.get("href"))
        page2 = requests.get(p.get("href"))
##        print (page2.status_code)
        soup2 = bs(page2.content,"html.parser")
        parrafo = soup2.select("p")
        for o in parrafo:
            if "FCFM" in o.getText():
                print (p.get("href"))
