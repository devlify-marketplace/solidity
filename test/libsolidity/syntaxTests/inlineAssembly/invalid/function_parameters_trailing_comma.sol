contract C {
    function f() public pure {
        assembly {
            function g(a, b,) {}
        }
    }
}
// ----
// ParserError 2314: (91-92): Expected identifier but got ')'
