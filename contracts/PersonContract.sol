// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract PersonContract{


    struct Person{

    string name;
    uint age;
    address addr;
}


    mapping (address =>Person) public Persons;

    function setPerson(string memory _name, uint age) public{


        Persons[msg.sender] = Person({
            name: _name,
            age : age,
            addr  : msg.sender
        });

    }


    function getPersons() public view returns(string memory, uint , address){

        Person memory person = Persons[msg.sender];
        return (person.name, person.age, person.addr);

}

}