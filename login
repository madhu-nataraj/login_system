from tkinter import *
from PIL import ImageTk
from tkinter import messagebox
class Login:
    def __init__(self,root):
        self.root=root
        self.root.title("Login System")
        self.root.geometry("1199x688+188+58")
        self.root.resizable(False,False)


# Background Image
        self.bg = ImageTk.PhotoImage(file="toll_img.jpg")


        self.bg_image = Label(self.root, image=self.bg).place(x=0, y=0, relwidth=1,relheight=1)


        #Login Frame
        Frame_login=Frame(self.root,bg="white")
        Frame_login.place(x=330,y=150,width=500,height=400)

        #Title & Subtitle
        title = Label(Frame_login, text="Login", font=("Impact", 35, "bold"), fg="blue", bg="white").place(x=90,y=38)
        subtitle = Label(Frame_login, text="Members Login Here", font=("goudy old style", 15, "bold"), fg="#1d1d1d", bg="white").place(x=90,y=110)
        #User Name

        lbl_user= Label(Frame_login, text="User Name", font=("goudy old style", 15, "bold"), fg="grey",bg="white").place(x=90,y=140)
        self.username = Entry(Frame_login,font=("goudy old style", 15),bg="white")
        self.username.place(x=90,y=170,width=320,height=35)
        #password
        lbl_pass= Label(Frame_login, text="Password", font=("goudy old style", 15, "bold"), fg="grey",
                         bg="white").place(x=90, y=210)
        self.password= Entry(Frame_login, font=("goudy old style", 15), bg="white")
        self.password.place(x=90, y=240, width=320, height=35)

        #button
        forget = Button(Frame_login, text="Forget Password?",cursor="hand2", font=("goudy old style", 12), fg="#6162FF", bd=0,
                        bg="white").place(x=90, y=280)
        submit = Button(Frame_login,command=self.check_function,cursor="hand2", text="Login", font=("goudy old style", 15), bg="#6162FF", bd=0,
                        fg="white").place(x=90, y=320,width=180,height=40)

    def check_function(self):
            if self.username.get()=="" or self.password.get()=="":
                messagebox.showerror("Error","All fields are required",parent=self.root)
            elif self.username.get() != "Madhu" or self.password.get() != "123456":
                    messagebox.showerror("Error", "Invalid Username or Password", parent=self.root)
            else:
                messagebox.showinfo("Welcome",f"Welcome {self.username.get()}")

root=Tk()
obj = Login(root)
root.mainloop()
