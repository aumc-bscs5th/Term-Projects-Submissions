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


image = Image.open('image1.3.jpg')
copy_of_image = image.copy()
photo = ImageTk.PhotoImage(image)
label = ttk.Label(root, image = photo)
label.bind('<Configure>', resize_image)
label.pack(fill=BOTH, expand = YES)
mainLabel=Label(root, text="Select An Option", height=2, width=120, font=5)
mainLabel.place(x=0, y=50)
employeeButton=Button(root, text="Proceed As Employee", height=2, width=30)
employeeButton.place(x=400, y=150)


def Button_Admin():
    root1 =Toplevel(root)
    root1.title("Administartor")
    root1.geometry('1000x550')
    root1.resizable(width=False, height=False)
    #avoid garbage collection
    image = Image.open('image1.3.jpg')
    copy_of_image = image.copy()
    photo = ImageTk.PhotoImage(image)
    def resize_image(self):
        new_width = self.width
        new_height = self.height
        image = copy_of_image.resize((new_width, new_height))
        photo = ImageTk.PhotoImage(image)
        label.config(image = photo)
        label.image = photo
    label= ttk.Label(root1, image = photo)
    label.bind('<Configure>', resize_image)
    label.pack(fill=BOTH, expand = YES)
    mainLabel1=ttk.Label(root1, text="LOG IN", height=2, width=120, font=5)
    mainLabel1.pack(x=0, y=50)
    buttonUsername= Button(root1, text="Username", height=2, width=30)
    buttonUsername.pack()
    root1.mainloop()

adminButton = Button(root, text="Proceed As Administartor", height=2, width=30, command=Button_Admin)
adminButton.place(x=400, y=220)
exitButton = Button(root, text="Exit", height=2, width=15, command=root.destroy)
exitButton.place(x=450, y=290)
#button = ttk.Button(root, bg='white')
#button.pack()
root.mainloop()