import requests
from bs4 import BeautifulSoup as bs
page = requests.get("https://www.uanl.mx/noticias/")
soup = bs(page.content,"html.parser")                   #Clase beautifulSoup
fa = soup.select("h3 a")
with open("link.txt", 'w') as handler:
    for p in fa:
        handler.write(p.get("href"))
        handler.write("\n")
