from tkinter import *
from tkinter import ttk
from PIL import Image, ImageTk


root = Tk()
root.title("StartUp Window")
root.geometry('1000x550')
root.resizable(width=False, height=False)

def resize_image(event):
    new_width = event.width
    new_height = event.height
    image = copy_of_image.resize((new_width, new_height))
    photo = ImageTk.PhotoImage(image)
    label.config(image = photo)
    label.image = photo

    #avoid garbage collection

image = Image.open('image1.3.jpg')
copy_of_image = image.copy()
photo = ImageTk.PhotoImage(image)
label = ttk.Label(root, image = photo)
label.bind('<Configure>', resize_image)
label.pack(fill=BOTH, expand = YES)
mainLabel=Label(root, text="LOG IN", height=2, width=120, font=5)
mainLabel.place(x=0, y=50)
usernameLabel=Label(root, text="UserName", height=0, width=8, font=5)
usernameLabel.place(x=300, y=180)

def dialog1():
    username=entry1.get()
    password = entry2.get()
    if (username == 'admin' & password=='secret'):
        box.showinfo('info','Correct Login')
    else:
        box.showinfo('info','Invalid Login')

E1 = Entry(root, bd =5)
E1.pack(padx=15, pady=7)


passwordLabel=Label(root, text="Password", height=3, width=7, font=3)
passwordLabel.place(x=300, y=230)

E2 = Entry(root, bd =2)
E2.place(x=390, y=180)


btn = Button(root, text ='Check Login', command = dialog1)
btn.pack()
#button = ttk.Button(root, bg='white')
#button.pack()
root.mainloop()