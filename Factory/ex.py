# STPCon 2019
# Factory


class PageObject(object):
    objects = []

    @staticmethod
    def get_page_object(x):
        if x == 'loginPage':
            return LoginPage()
        elif x == 'footer':
            return _Footer()
        elif x == 'header':
            return _Header()
        elif x == 'SearchPage':
            return _SearchPage()

    @staticmethod
    def dump_objects(pg):
        for obj in pg.objects:
            print("{}".format(obj))


class _Footer(PageObject):
    copy_right = { 'id': 'cp' }

class _Header(PageObject):
    title = { 'id': 'title' }

class LoginPage(PageObject):
    username = { 'id': 'userid' }
    password = { 'xpath': '//input[text()="userid"]' }
    footer = PageObject.get_page_object('footer')

    def __init__(self):
        self.objects.append(self.footer)
        self.objects.append(PageObject.get_page_object('header'))

    def totalObjects(self):
        return len(self.objects)

class _SearchPage(PageObject):
    textField = { 'css': '.user-search' }
    submit_buttoon = { 'linkText': 'OK' }



# Python sets __name__ to __main__ when Python executes the source file.
if __name__ == "__main__":
    login_pg = PageObject.get_page_object('loginPage')
    print("LoginPage username:{}, password:{}".format(login_pg.username, login_pg.password))
    print("LoginPage has {} page objects.".format(login_pg.totalObjects()))
    login_pg.dump_objects(login_pg)

    print('-' * 72)
    search_pg = PageObject.get_page_object('searchPage')

