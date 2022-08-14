--- draw the triangle -1 ------

declare @number as int;
set @number = 20

while @number != 0
    begin
        print(replicate('* ', @number))
        set @number = @number - 1
    end


----- draw-the-triangle-2 ----- 

declare @number as int;
set @number = 1

while @number <= 20
    begin
        print(replicate('* ', @number))
        set @number = @number + 1
    end
    
