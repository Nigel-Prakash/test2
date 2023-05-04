def add():
  cid=input("Customer Id:")
  cname=input("Customer Name:")
  ad=input("Customer Address:")
  cno=input("Customer Contact Number:")
  ccar =input("Customer's vehicle:")
  cregno = input("Vehicle's Registration No:")
  stat = input("Service Status: ")
  with open("autorepair.txt","a") as f:
    f.write(cid+"\t")
    f.write(cname+"\t")
    f.write(ad+"\t")
    f.write(cno+"\t")
    f.write(ccar+"\t")
    f.write(cregno+"\t")
    f.write(stat+"\n")
    print("Record added")
        
    
def show():
    with open("customer.txt","r") as f:
        print("ID\t Name\t Address    ContactNo \t Vehicle \t Reg No    Status ")
        print("\n")
        print(f.read())
        
def search():
    i=input("Enter the id to be searched")
    with open("customer.txt","r") as f:
        all=f.readlines()
        for data in all:
            d=data.split("\t",1)
            if(d[0]==i):
                print(data)

def delete():
    i=input("Enter the ID to remove from file");
    with open("customer.txt","r") as f:
        all=f.readlines()     
    with open("customer.txt","w") as f:      
        for data in all:
            d=data.split("\t",1)
            if(d[0]!=i):
                f.writelines(data)
    print("Record deleted")


def update():
    i=input("Enter the id to be updated from file")
    with open("customer.txt","r") as f:
        all=f.readlines()
    with open("customer.txt","w") as f:      
        for data in all:
            d=data.split("\t",1)
            if(d[0]==i):
                nn=input("Enter new name:")
                na=input("Enter new address:")
                nc=input("Enter new contact no:")
                nv=input("Enter new vehicle number:")
                nr=input("Enter new vehicle's registration number:")
                ns=input("Enter new vehcile's service status:")
                f.writelines(d[0]+"\t"+nn+"\t"+na+"\t"+nc+"\t"+nv+"\t"+nr+"\t"+ns+"\n")
            else:
                f.writelines(data)
    print("Record Updated")




  
while(True):
  print("Welcome to Auto repair portal")
  print("1.Add new customer: ")
  print("2.Delete customer")
  print("3.Update customer's details")
  print("4.Search customer details and repiar status")
  print("5.Show all customer details")
  print("6.Exit")
  ch=int(input("Enter your choice:"))
  if ch==1:
    add()
  if ch==2:
    delete()
  if ch==3:
    update()
  if ch==4:
    search()
  if ch==5:
    show()
  if ch==6:
    break;
