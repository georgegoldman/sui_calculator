/*
/// Module: sui_calculator
module sui_calculator::sui_calculator;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module sui_calculator::sui_calculator;

#[allow(unused_field)]
public struct Output has key, store {
    id: UID,
    result: u64
}

public entry fun start(ctx:&mut TxContext){
    let output= Output { id: object::new(ctx), result:0 };
    transfer::public_transfer(output, tx_context::sender(ctx))
}

public entry fun add(x: u64, y: u64, ctx:&mut TxContext){
    let output = Output { id:object::new(ctx), result:x+y };
    transfer::public_transfer(output, tx_context::sender(ctx))
}

public entry fun sub(x:u64, y:u64, ctx:&mut TxContext){
    let output = Output { id:object::new(ctx), result:x - y };
    transfer::public_transfer(output, tx_context::sender(ctx))
}

public entry fun mul(x:u64, y:u64, ctx:&mut TxContext){
    let output = Output { id:object::new(ctx), result:x * y };
    transfer::public_transfer(output, tx_context::sender(ctx))
}

public entry fun div(x:u64, y:u64, ctx:&mut TxContext){
    let output= Output { id:object::new(ctx), result:x / y };
    transfer::public_transfer(output, tx_context::sender(ctx))
}


