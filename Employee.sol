//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Employee {


    Emp public emp;


    struct Emp{
        uint256 id;
        string name;
        uint256 bonus;
        uint256 fbPosts;
        uint256 tweets;
    }
    

    function defineTask(uint256 _id, string memory _name,uint256 _bonus,uint256 _fbPosts, uint256 _tweets) public {
        emp = Emp(_id, _name,_bonus,_fbPosts,_tweets);
    }

    function getTask() public view returns(uint256, string memory,uint256,uint256, uint256){
        return (emp.id, emp.name,emp.bonus, emp.fbPosts, emp.tweets);
    }
   
}
