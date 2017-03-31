
Uses Math;
var N : LongInt;
    
		tmp , x : Int64;
		
		i : LongInt;
		ans : Int64;
		
		

begin
  
	readLn ( N ) ; 
	
	x := 0;
	ans := -1000000001;
	
	for i := 1 to N do
	begin
	  
		read ( tmp ) ; 
		x += tmp;
		// x := x + tmp;
		
		
		if ( x < 0 ) then
		  x := 0;
	  
		ans := max ( ans , x );
		
	end;
	
	writeLn ( ans ) ; 
	

end.