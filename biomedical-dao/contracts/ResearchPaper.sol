// SPDX-License-Identifier: MIT
// contracts/ResearchPaper.sol

pragma solidity ^0.8.0;

contract ResearchPaper {
    struct Paper {
        address author;
        string title;
        string ipfsHash; 
    }

    Paper[] public papers;

    function submitPaper(string memory title, string memory ipfsHash) public {
        papers.push(Paper(msg.sender, title, ipfsHash));
    }

    function getPaper(uint paperId) public view returns (Paper memory) {
        require(paperId < papers.length, "Paper does not exist.");
        return papers[paperId];
    }
}

