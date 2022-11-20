// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

// storage - variable is a state variable (store on blockchain)
// memory - variable is in memory and it exists while a function is being called
// calldata - special data location that contains function arguments
// calldata khali refrence pass krta he variable ka, jb k memory poora varable memory me load krti he
//  is trah calldata gas bacha leta he. lekin ap is me data ko modify nhi kr skte


contract DataLocations {
    struct Info{
        string name;
        uint age;
    }
    
    Info public myinfo = Info("noman",25);
    function changeStorage(Info storage info)internal{
        info.name = "nehal";
        info.age = 23;

    }

    function changeMemory(Info memory info)internal pure{
        info.name = "nehal";
        info.age = 23;

    }

// calldata me hm values ko change nhi kr skte khali access kr skte hen
    function changeCalldata(Info calldata info)internal pure{
        info.name="Shayan";
        info.age=32;

    }

    function checkMemory() external view{
        changeMemory(myinfo);
    }
    function checkStorage() external {
        changeStorage(myinfo);
    }
}
