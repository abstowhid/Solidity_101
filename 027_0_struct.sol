


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
Task public tsks;   //Task is the data type and tsks is variable that store Task type data(including all childs inside Task) (only one Task)
Task[] public allTask; //so,allTask is the variable that store 'Task type data' . every index of array will have a new struct as i push value by index reference
mapping (uint=>Task) tasks; //so, every key will have a single struct(Task here)
mapping (uint=>Task[]) task; //so, each key will have multiple Task(each key will have an array and the array can have it's own index and indexwise more Task)


//example: get and set value in struct( for allTask array)
        function setAllTask(string memory _name, string memory _level,bool _completed) external   {
            
            allTask.push(Task(_name,_level,_completed));   // store one by one struct(Task) by index number & imagine the index number is the task number
        }
    function check(uint index) external   view returns(bool,string memory) {
        return (allTask[index].completed,allTask[index].name);
    }

}
