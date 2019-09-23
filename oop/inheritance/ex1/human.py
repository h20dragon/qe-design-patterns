

class Human:
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

  def full_name(self):
    return "{} {}".format(self.firstname, self.lastname)


# Python sets __name__ to __main__ when Python executes the source file.
if __name__ == "__main__":
    h = Human("Joe", "Cool")
    print("{}".format(h.full_name()))

