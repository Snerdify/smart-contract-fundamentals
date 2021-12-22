pragma solidity 0.4.19;
// a simple interface 
interface InterfaceExample{
    //functions are only declared, not defined
    function getStr()public view returns(string memory);
    function setValue(uint _num1,uint _num2) public ;
    function add()public view returns(uint); 
}

//contract that implements the interface
contract thisContract is InterfaceExample{
    //private variables
    uint private num1;
    uint private num2;

    //now we define the functions that we declared inside the interface
    function getStr() public view returns(string memory){
        return 'Hello, isnt this cool?';
    }
    //use the 2nd function to set the values of private variables 
    function setValue(uint _num1,uint _num2)public{
        num1=_num1;
        num2=_num2;
    }

        //function to add 2 numbers
    function add() public view returns (uint){
        return num1+num2;
    
    }

}

contract call{

    //create an object
    InterfaceExample obj;


    function call() public {
        obj=new thisContract();
    }

    function getValue() public returns (uint){
        obj.getStr;
        obj.setValue(7,88);
        return obj.add();
    }



}



