//declare
//implement in a variable (as array,mapping,parameter)
//set and get values like as same as array & mapping (just in place of value , use structName(values);


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract First {
//declare  struct with a name
struct Task{
    //declare=>how many and which data types & variable i want to use
string name;
string level;
bool completed;
}
//1.usage as a state variable:
Task[] public allTask; //so,allTask is the array variable that store 'Task type data' in array format . every index of array will have a new struct as i push value by index reference
//more ways :
 mapping (uint=>Task) tasks; //so, every key will have a single struct(Task here)
// Task public tsks;   //Task is the data type and tsks is variable that store Task type data(including all childs inside Task) (only one Task)
// mapping (uint=>Task[]) task; //so, each key will have multiple Task(each key will have an array and the array can have it's own index and indexwise more Task)
//more ways in next file<<


//example: get and set value in struct( for  array)
        function setAllTask(string memory _name, string memory _level,bool _completed) external   {
            //arr.push(values);  =>values=> Task(values)
            allTask.push(Task(_name,_level,_completed));   // store one by one struct(Task) by index number & imagine the index number is the task number
        }
    function check(uint index) external   view returns(bool,string memory) {
        return (allTask[index].completed,allTask[index].name);
    }
//example: get and set value in struct( for mapping)

function setm(uint ind,string memory f,string memory g, bool d) public {
//tasks[key]=values;  =>values=> Task(values)
tasks[ind]=Task(f,g,d);
}
function getm(uint ind)public  view  returns (string memory,bool){
    return (tasks[ind].name,tasks[ind].completed);
}

}
