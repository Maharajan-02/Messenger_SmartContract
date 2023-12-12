// SPDX-License-Identifier: MIT
pragma solidity > 0.8.0;

contract Messenger{
    
    struct Message{
        address _from;
        string _message;
    }

    mapping (address => Message[]) message;

    function send_message(address _sender_address, string memory message_content) public {
        message[_sender_address].push(Message(msg.sender,message_content ));
    }

    function read_messages() public view returns (Message[] memory){
        return message[msg.sender];
    }

}