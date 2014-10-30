1
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


-----variabila de tip tabel
declare @tbl table ( id int primary key identity, firstname nvarchar(100))

insert @tbl values ('gogog')

select * from @tbl

------


----parcurgerea secventiala folosind cursor


----parcurgerea secventiala folosind bucla while

declare @tbl table ( id int primary key identity, firstname nvarchar(100))
declare @id int = 1
declare @maxId int 



insert into @tbl values ('vasile1')
insert into @tbl values ('vasile2')
insert into @tbl values ('vasile3')

set @maxId = (select max(id) from @tbl)

while @id<= @maxId
begin
	
	
	select * from @tbl where id = @id	
	
	set @id = @id +1 
end

