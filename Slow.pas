  Uses Math;

  var N : LongInt;
	    L , R : LongInt;
			
			A : array [ 0 .. 100000 ] of LongInt;
			P : array [ 0 .. 100000 ] of Int64;
			
  var i : LongInt;
	    ans : Int64;
begin
  
	readLn ( N ) ; 
	for i := 1 to N do
	  read ( A[i] ) ; 
		
	P[0] := 0;
	for i := 1 to N do
	  P[i] := P[i-1] + A[i];
	
	
	Ans := A[1];
	
	for R := 1 to N do
	begin
	  
		for L := 0 to R-1 do
		begin
		  
			ans := max ( ans , P[R] - P[L-1] );
			
		end;
		
	end;
	
	writeLn ( ans ) ; 
	
	
end.