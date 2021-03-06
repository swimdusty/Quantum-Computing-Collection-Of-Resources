namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
 
    operation Solve (qs : Qubit[]) : Int
    {
        body
        {
            H(qs[1]);
            CNOT(qs[0], qs[1]);
            H(qs[0]);
            
            let m1 = M(qs[1]) == One ? 0 | 1;
            let m2 = M(qs[0]) == One ? 0 | 1;
        
            return 2*m1 + m2;
        }
    }
}

