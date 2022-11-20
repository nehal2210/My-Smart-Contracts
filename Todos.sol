pragma solidity 0.8.7;



contract ToDo{

struct Field{
    string text;
    bool complete;
}

Field[] public todo;


function create(string calldata _text,bool _complete) external {

    todo.push(Field(_text,_complete));
}


function update(string calldata _text, bool _complete, uint _index) external {
    todo[_index].text = _text;
    todo[_index].complete = _complete;
}


function remove(uint _index) external {
    delete todo[_index];
}


function get(uint _index) external view returns(Field memory) {
    return todo[_index];
}

function toggleComplete(uint _index) external {
    todo[_index].complete = !todo[_index].complete;
}


}