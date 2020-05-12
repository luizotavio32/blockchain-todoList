pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0; //estado do contato

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks; //id da task

    constructor() public {
        createTask("Inserindo Task");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);

    }
}
