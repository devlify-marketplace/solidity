==== Source: A.sol ====
import "B.sol";
contract Main is Base {
    function f() public returns (uint) { return bump(3); }
}
==== Source: B.sol ====
contract Base {
    uint x;
    function bump(uint a) public returns (uint) {
        x += a * 7;
        return x;
    }
}
// ----
// .compilation.sources[0].path: A.sol
// .compilation.sources[1].path: B.sol
// Main.contract.definition.source.id: 0
// Base.contract.definition.source.id: 1
// Main.creation.instructions[0].context.code.source.id: 0
// Main.runtime.instructions[0].context.code.source.id: 0
// Base.runtime.instructions[0].context.code.source.id: 1
// Main.runtime.instructions[430].operation.mnemonic: JUMPDEST
// Main.runtime.instructions[430].context.code.range.offset: 91
// Main.runtime.instructions[430].context.code.range.length: 89
// Main.runtime.instructions[430].context.code.source.id: 1
