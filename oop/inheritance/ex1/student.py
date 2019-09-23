

from human import Human

class Student(Human):

  def __init__(self, fname, lname, school):
    Human.__init__(self, fname, lname)
    self.school = school
    self.debt = 0

  def setDebt(self, ouch):
    self.debt = ouch

  def canGraduate(self):
      return self.debt == 0


# Python sets __name__ to __main__ when Python executes the source file.
if __name__ == "__main__":
    john = Student("john", "smith", "MIT")
    john.setDebt(35000)
    print("{} can graduate: {}".format(john.full_name(), john.canGraduate()))


    mick  = Student("Mickey", "Mouse", "Disney")
    mick.setDebt(0)
    print("{} can graduate: {}".format(mick.full_name(), mick.canGraduate()))


