
class Rectangle(object):

    @staticmethod
    def area(width, height):
        return width * height


# Python sets __name__ to __main__ when Python executes the source file.
if __name__ == "__main__":
    width=4
    length=8

    area = Rectangle.area(width, length)

    print("Area of rectange with width {} and length {} is {}.".format(length, width, area))

