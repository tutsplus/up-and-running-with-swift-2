

enum Status {
    case Open
    case InProgress
    case Closed
}

struct Todo {
    var name: String
    var status = Status.Open
    
    init(todoName: String) {
        name = todoName
    }
}


class TodoManager {
    var todos: [Todo] = []
    
    func add(todo: Todo) {
        todos.append(todo)
    }
    
    func add(name: String) {
        let todo = Todo(todoName: name)
        
        todos.append(todo)
    }
    
    func changeStatus(todo: Todo, status: Status) {
        guard let index = todos.indexOf({$0.name == todo.name}) else {return}
        
        todos[index].status = status
    }
    
    func showOpen() {
        print("")
        print("=================Open Todos===================")
        
        for todo in todos where todo.status == Status.Open {
            print(todo.name)
        }
        
        print("==============================================")
    }
}



var bed = Todo(todoName: "Make Bed")
var grocery = Todo(todoName: "Go Grocery Shopping")

var manager = TodoManager()

manager.showOpen()

manager.add(bed)
manager.add(grocery)

manager.showOpen()

manager.changeStatus(bed, status: Status.Closed)

manager.showOpen()

































