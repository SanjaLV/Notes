  const MAX_N = 100000;
	      MAX_M = 1000000;
				
  type tListNode = record
	  next , value : LongInt;
	end;
	
	
	var Link : array [ 1 .. MAX_N ] of LongInt;
	    ee : LongInt;
			E : array [ 1 .. MAX_M ] of tListNode;
	
	
	procedure addToList ( ppl , x : LongInt ) ; 
	begin
	
	  // Create new node
	  inc ( ee ) ; 
		E[ee].value := x;
		E[ee].next := Link[ppl]; // Set Link to Next
		
		Link[ppl] := ee; // Set Link to first
	end;
	
	procedure PrintList ( v : LongInt ) ; 
	begin 
	  write ( '[ ');
	  while ( v > 0 ) do // white not END of 
		begin
		  write ( E[v].value , ', ' ); // Print Element
			v := E[v].next; // Go to Next
		end;
		
		writeLn ( ' ] ' );
	end;
	
	
	
	var N , M : LongInt;
	    x , i , a  , t: LongInt;
begin
  
	readLn ( N , M ) ; 
	
	for i := 1 to M do
	begin
	  
		read ( t ) ; 
		if ( t = 1 ) then
		begin
		  readLn ( x , a ) ; 
			addToList ( x , a ) ;
		end
		else
		begin
		  readLn ( x ) ; 
			PrintList ( Link[x] ) ; 
		end;
		
	end;
	
	
end.