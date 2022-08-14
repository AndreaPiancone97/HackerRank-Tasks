--- draw the triangle -1 ------




----- draw-the-triangle-2 ----- 

declare @number as int;
set @number = 1

while @number <= 20
    begin
        print(replicate('* ', @number))
        set @number = @number + 1
    end
    
