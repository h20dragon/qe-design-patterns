# STP2019
# H20Dragon

class Superman:
    
    def __init__(self):
        print("Wings are prepped!")

    def whoMe(self):
        print("Superman")

    def fly(self):
        print("Up-up-up and away!")


class Aquaman(Superman):

    def __init__(self):
        # call super() function
        super().__init__()
        print("Fins are prepped!!")

    def whoMe(self):
        print("Aquaman")

    def talk(self):
        print("Talk with squid.")

aqua_man= Aquaman()
aqua_man.whoMe()
aqua_man.fly()
aqua_man.talk()

