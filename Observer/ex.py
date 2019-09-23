# STP2019 - FALL


# Observable
class Publisher(object):
    subscribers = set()

    def register(self, user):
        self.subscribers.add(user)

    def unregister(self, user):
        self.subscribers.discard(user)

    def send_notifications(self, message):
        for user in self.subscribers:
            user.update(message)


# Observer
class Subscriber(object):

    def __init__(self, id):
        self.id = id

    def update(self, message):
        print("{} received msg: '{}'".format(self.id, message))




# Python sets __name__ to __main__ when Python executes the source file.
if __name__ == "__main__":
    publisher = Publisher()

    # Let's create the observers that want to receive notifications
    john = Subscriber('John')
    paul = Subscriber('Paul')
    ringo = Subscriber('Ringo')
    george = Subscriber('George')

    publisher.register(john)
    publisher.register(paul)

    # Here, we send the registered subscribers, or observers, notifications.
    publisher.send_notifications('Rolling Stones are coming')

    print('-' * 72)
    print(".. removing subscriber paul")
    print('-' * 72)
    publisher.unregister(paul)
    publisher.send_notifications("Beware, Paul's the walrus")
