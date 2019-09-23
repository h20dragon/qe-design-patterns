
class BasePage(object):
    def __init__(self, *args, **kwargs):
        print("BasePage:".format(*args))
        print("[BasePage]: {}".format(kwargs))

class Header(BasePage):
    def __init__(self, *args, **kwargs):
        print("[Header]")
        self.make = kwargs.pop('make')
        super(Header, self).__init__(*args, **kwargs)

class Footer(BasePage):
    def __init__(self, *args, **kwargs):
        print("Footer")
        super(Footer, self).__init__(*args, **kwargs)

class Search(Header):
    def __init__(self, arg, *args, **kwargs):
        print("Search","arg=",arg)
        super(Search, self).__init__(arg, *args, **kwargs)

class Copyright(Footer):
    def __init__(self, arg, *args, **kwargs):
        print("Copyright", "arg=",arg)
        super(Copyright, self).__init__(arg, *args, **kwargs)

class Legal(Search,Copyright):
    def __init__(self, arg, *args, **kwargs):
        print("Legal", "arg=",arg)
        super(Legal, self).__init__(arg, *args, **kwargs)



footer = Footer(make='Germany')
header = Header(make='Canada')
search = Search(header, make='Japan')
copyright = Copyright(footer, name='Foo')
