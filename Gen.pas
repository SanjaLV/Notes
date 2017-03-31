  const c1e5 = 1000;
	 //           12345
	      c1e9 = 1000000000;
	 //           123456789
  function randint ( l , r : LongINt ) : LongInt;
	begin
	  randint := random ( r - l + 1 ) + l;
	end;
	
	var N , i : LongInt;
begin
  randomize();
	
	
	N := randint ( 1 , c1e5 );
	
	writeLn ( N ) ; 
	
	for i := 1 to N do
	begin
	  write ( randint( -c1e9 , c1e9 ) );
		
		if ( i < N ) then
		  write ( ' ' ) ; 
	end;
	
	writeLn();
	
	
end.