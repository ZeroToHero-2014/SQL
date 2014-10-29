
declare @sir  nvarchar(max) = 'vasile'
set @sir = '1234456789012342123123123213123123'



select @sir = @sir + ' dasdasdasd'

--elect @sir


----loop sample
declare @limit int = 10
declare @counter int =1 ;

while @counter<= @limit
begin
	print @counter 
	if @counter = 2
	begin
		break 
	end 
	set @counter = @counter +1 

	
end


