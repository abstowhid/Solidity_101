A custom data type | here, Task is a data type not a variable |
use:
1.as a state variable(as variable need a datatype and struct(her Task) is a datatype
2.as a function parameter & or a functional variable
//======================================================================================================================

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
        Task memory tempTask = Task("Learn Solidity", "High", false);
        return tempTask; // Returns a temporary Task struct
    }

2️⃣  AS PARAMETER:
   function processTask(Task memory _task) public pure returns (string memory) {
        return _task.name; // Access struct values directly
    }

//============================================================      Advanched      ==================================================================================
3️⃣ Structs in Nested Structs (Struct Inside Struct)


