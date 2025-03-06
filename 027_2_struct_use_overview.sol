A custom data type | here,Task is a struct.so, Task is a data type not a variable | and later to declare variable we gonna use struct(as variable need a datatype)
use:
1.as a state variable(as variable need a datatype and struct(here Task) is a datatype
2.as a function parameter & or a functional variable
//======================================================================================================================
//declare Struct
struct Task{
string name;
string level;
bool completed;
}
🚀use : as state variable
1️⃣ Task public tsks; 
2️⃣ Task[] public allTask; 
3️⃣ mapping (uint=>Task) tasks; 
4️⃣ mapping (uint=>Task[]) task;


🚀 Polished Explanation

1️⃣ Task public tsks;

    This stores a single Task struct as a public variable.
    It holds one Task at a time, along with all its internal fields (name, level, completed).
    ✅ Best for: When you only need to store and access a single Task.

2️⃣ Task[] public allTask;

    This stores multiple Task structs in an array.
    You can add multiple tasks dynamically, each identified by an index.
    ✅ Best for: When you need to keep track of a list of tasks without a specific owner or key.

3️⃣ mapping(uint => Task) tasks;

    This stores a single Task per key (uint).
    Each uint key maps to one and only one Task.
    ✅ Best for: When each person (identified by uint) can have only one Task.

4️⃣ mapping(uint => Task[]) task;

    This stores multiple Task structs under a single key (uint).
    Each key maps to an array of Task structs, allowing a person to have multiple tasks.
    ✅ Best for: When each person (identified by uint) can have multiple tasks.

//==================================================================================================================================

🚀use : as functional variable
1️⃣ AS FUNCTIONAL VARIABLE
function createTempTask() public pure returns (Task memory) {
        Task memory tempTask = Task("Learn Solidity", "High", false);  //create a new local copy with the values
        return tempTask; // Returns a temporary Task struct
    }

2️⃣  AS PARAMETER:
   function processTask(Task memory _task) public pure returns (string memory) {
        return _task.name; // Access struct values directly
    }

//============================================================      Advanched      ==================================================================================
3️⃣ Structs in Nested Structs (Struct Inside Struct)
contract Example {
    struct SubTask {
        string title;
        bool done;
    }

    struct Task {
        string name;
        string level;
        bool completed;
        SubTask subtask; // Struct inside another struct
    }

    Task public myTask = Task("Main Task", "High", false, SubTask("Subtask 1", false));
}

4️⃣ Structs Inside Struct Arrays (Multiple Nested Structs)

contract Example {
    struct SubTask {
        string title;
        bool done;
    }

    struct Task {
        string name;
        string level;
        bool completed;
        SubTask[] subtasks; // Array of structs inside a struct
    }

    Task public myTask;

    constructor() {
        myTask.name = "Main Task";
        myTask.level = "High";
        myTask.completed = false;

        myTask.subtasks.push(SubTask("Subtask 1", false));
        myTask.subtasks.push(SubTask("Subtask 2", true));
    }
}



