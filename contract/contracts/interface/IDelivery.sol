// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IDelivery {
    /*//////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////*/

    event OrderRequested(uint256 indexed orderId, address indexed client, uint256 orderPrice);
    event OrderAccepted(uint256 indexed orderId, address indexed deliverer);
    event OrderCompleted(uint256 indexed orderId, uint256 indexed completeTime);
    event OrderCancelled(uint256 indexed orderId, address indexed client);

    /*//////////////////////////////////////////////////////////////
                                    ERRORS
    //////////////////////////////////////////////////////////////*/

    error InvalidAddress();
    error Unauthorized();
    error InvalidSignature();
    error InvalidOrderPrice();
    error InvalidFeeRate();
    error ExpiredSignature();
    error AlreadyRequested();
    error SelfAccept();
    error NotRequested();
    error NotPending();
    error NotRegisteredDeliverer();
    error NotAccepted();
    error NotCompleted();
    error NotCancelled();
    error ExternalCallFailed();
    
    /*//////////////////////////////////////////////////////////////
                                    FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function requestOrder(uint256 _orderId, uint256 _orderPrice, address _manager, bytes calldata _managerSignature, uint256 _signatureExpiration) external;
    function acceptOrder(uint256 _orderId) external;
    function completeOrder(uint256 _orderId, bytes calldata _clientSignature, bytes calldata _delivererSignature) external;
    function cancelOrder(uint256 _orderId) external;
}
