local dx, dy = canvas:attrSize()
local item1 = false
local item2 = false
local item3 = false

function stop ()
    print ("Entrou no stop...")
    event.post {
        class = 'ncl',
        type = 'presentation',
        action = 'stop',
    }	
end

function confirma ()
    event.post {
        class = 'ncl',
        type = 'presentation',
        action = 'start',
        label = 'confirma'
    }	
end

function handler(evt)

    --print ('Name: '..evt.type)
    if evt.type == 'attribution' and evt.action == 'stop' then
        if evt.name == 'i1' or evt.name == 'i2' then
                canvas:attrColor('black')
                canvas:drawRect('fill', 0, 0, dx,dy)
                canvas:attrColor('white')
                canvas:attrFont('arial',22,'bold')
                canvas:drawText(dx/3, dy/4, "Que pena, você errou!")
                canvas:flush()
                event.timer (1000, stop)
        end    
        if evt.name == 'i3' then
                canvas:attrColor('black')
                canvas:drawRect('fill', 0, 0, dx,dy)
                canvas:attrColor('white')
                canvas:attrFont('arial',22,'bold')
                canvas:drawText(dx/3, dy/4, "Parabéns, você acertou!")
                canvas:flush()
                event.timer (1000, stop)
        end
    end
end


event.register(handler, 'ncl')