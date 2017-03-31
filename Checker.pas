  Uses CRT , SysUtils;
	
	procedure notify ( exitLoop : Boolean ; msg : String ; color : LongInt ) ; 
	begin
	  TextColor ( color ) ; 
		writeLn ( msg ) ; 
		NormVideo; // ClearColor
		
		repeat
		until exitLoop; // do not exit if fail
		
	end;
	
	function ReadOutp ( file_name : string ) : Int64;
	  var f : text;
		    res : Int64;
	begin 
	  assign ( f , file_name ) ; 
		reset ( f ) ;
    
    readLn ( f , res ) ;		
		
		close ( f ) ; 
		
		ReadOutp := res;
	end;
	
	
  var fast , slow : Int64;
begin
  
	fast := ReadOutp ( 'fast' );
	slow := ReadOutp ( 'slow' );
	
	if ( fast = slow ) then
	  notify ( true , 'ok' , GREEN )
	else if ( fast > slow ) then
	  notify ( false , 'FAIL FAST HAVE BETTER SOLUTION' , LIGHTRED )
	else 
	  notify ( false , 'WA fast= ' + IntToStr(fast) + ' slow = ' + IntToStr(slow ) , RED );
	

end.
