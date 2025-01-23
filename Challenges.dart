// Challenge one


void main() {
    List<int> myList = [14, 3, 30, 2];
    reverse(myList);
}


void reverse(List <int> list) {
    for (int i = list.length - 1; i >= 0; i--) {
        print(list[i]);
    }
}

// Challenge two


void main() {
    String testString = '(()))';
    print(check(testString)); // Output: true
}

bool check(String input) {
    var stack = <String>[];

    for (var char in input.runes) {
        if (String.fromCharCode(char) == '(') {
            stack.add('(');
        }
        else if (String.fromCharCode(char) == ')') {
            if (stack.isEmpty || stack.removeLast() != '(') {
                return false;
            }
        }
    }

    return stack.isEmpty;
}

//2.Linked List:


//Challenge one 
class Node {
    dynamic x;
    Node ? next;

    Node(this.x);
}

class LinkedList {
    Node ? head;

    void ReversePrint(Node ? node) {
        if (node == null) return;
        ReversePrint(node.next);
        print(node.x);
    }
}

void main() {
    LinkedList linkedList = LinkedList();
    linkedList.head = Node(12);
    linkedList.head!.next = Node(21);
    linkedList.head!.next!.next = Node(35);
    linkedList.head!.next!.next!.next = Node(4);


    linkedList.ReversePrint(linkedList.head);
}

// Challenge tow
class Node {
    dynamic x;
    Node ? next;

    Node(this.x);
}

class List {
    Node ? head;

    Node ? findMiddleNode() {
        if (head == null) return null;

        var slowPointer = head;
        var fastPointer = head;

        while (fastPointer != null && fastPointer.next != null) {
            slowPointer = slowPointer!.next;
            fastPointer = fastPointer.next!.next;
        }

        return slowPointer;
    }
}

void main() {
    List linkedList = List();
    linkedList.head = Node(103);
    linkedList.head!.next = Node(20);
    linkedList.head!.next!.next = Node(306);
    linkedList.head!.next!.next!.next = Node(40);
    linkedList.head!.next!.next!.next!.next = Node(56);

    print(linkedList.findMiddleNode() ? .x);
}

// Challenge three
class Node {
    dynamic x;
    Node ? next;

    Node(this.x);
}

class List {
    Node ? head;

    void reverseLinkedList() {
        Node ? prev = null;
        Node ? current = head;
        Node ? nextNode;

        while (current != null) {
            nextNode = current.next;
            current.next = prev;
            prev = current;
            current = nextNode;
        }

        head = prev;
    }
}

void main() {
    List Liste = List();
    Liste.head = Node(11);
    Liste.head!.next = Node(22);
    Liste.head!.next!.next = Node(33);


    Liste.reverseLinkedList();

    var current = Liste.head;
    while (current != null) {
        print(current.x);
        current = current.next;
    }
}

//Challenge four
class Node {
    dynamic x;
    Node ? next;

    Node(this.x);
}

class LinkedList {
    Node ? head;

    void removeAllOccurrences(dynamic target) {
        Node ? current = head;
        Node ? prev = null;

        while (current != null) {
            if (current.x == target) {
                if (prev != null) {
                    prev.next = current.next;
                }
                else {
                    head = current.next;
                }
            }
            else {
                prev = current;
            }
            current = current.next;
        }
    }
}

void main() {
    LinkedList Liste = LinkedList();
    Liste.head = Node(1);
    Liste.head!.next = Node(21);
    Liste.head!.next!.next = Node(3);
    Liste.head!.next!.next!.next = Node(21);


    Liste.removeAllOccurrences(21);

    // Print the linked list after removing all occurrences of '2'
    var current = Liste.head;
    while (current != null) {
        print(current.x);
        current = current.next;
    }
}
// 