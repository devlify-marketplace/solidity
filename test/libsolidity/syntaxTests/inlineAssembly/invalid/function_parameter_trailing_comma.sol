contract C {
    function f() public pure {
        assembly {
            function g(a, /* trailing comma */) {}
        }
    }
}
// ----
// ParserError 2314: (109-110): Expected identifier but got ')'
