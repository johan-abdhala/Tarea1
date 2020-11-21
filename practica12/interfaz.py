from tkinter import *
import requests
from bs4 import BeautifulSoup as bs
def codigoboton():
   page = requests.get("https://www.uanl.mx/noticias/")
   soup = bs(page.content,"html.parser")                   #Clase beautifulSoup
   fa = soup.select("h3 a")
   with open("links.txt", 'w') as handler:
       for p in fa:
           handler.write(p.get("href"))
           handler.write("\n")
raiz=Tk()
raiz.title("Menu")
raiz.config(bg="#33FFB2",width="550",height="550" , cursor="pirate")
raiz.resizable(0,0)
Label(raiz, text="Click para hacer webscarping a la UANL", font=("Arial",12)).place(x=140,y=225)
boton=Button(raiz,text="Empezar", command=codigoboton)
boton.place(x=225,y=300)
raiz.mainloop()
