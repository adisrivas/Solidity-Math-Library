pragma solidity 0.5.1;

// Library for Math functions in Solidity

library Maths {

    function add(int128 a, int128 b) internal pure returns(int128) {
        return a + b;
    }

    function substract(int128 a, int128 b) internal pure returns(int128) {
        return a - b;
    }

    function multiply(int128 a, int128 b) internal pure returns(int128) {
        return a * b;
    }

    function divide(int128 a, int128 b) internal pure returns(int128) {
        require(b > 0);
        return a / b;
    }

    function pow(int128 a, int128 b) internal pure returns(int128) {
        return a ** b;
    }

    function increment(int128 a) internal pure returns(int128) {
       return a++;
    }

    function decrement(int128 a) internal pure returns(int128) {
        return a--;
    }

    function abs(int a) internal pure returns(uint) {
        if(a < 0) {
            return uint256(-a);
        }
        return uint256(a);
    }

    function sqrt(uint256 a) internal pure returns(uint256) {
        uint256 x = a / 2;
        uint256 y = 0;
        while (x != y){
            y = x;
            x = (x + a/x) / 2;
        }
        return x;
    }
}