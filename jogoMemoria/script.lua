local dx, dy = canvas:attrSize()
local item1 = false
local item2 = false
local item3 = false

function stop ()
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
        if evt.name == 'i1' then
            if item1 == false then
                canvas:attrColor('black')
                canvas:drawRect('fill', 0, 0, dx,dy)
                canvas:attrColor('white')
                canvas:attrFont('arial',22,'bold')
                canvas:drawText(dx/3, dy/4, "Confirma seleção do item 1?")
                print ("Selecionou item 1...")
                item1 = true
                item2 = false
                item3 = false
                canvas:flush()
            end
        end
        if evt.name == 'i2' then
            if item2 == false then
                canvas:attrColor('black')
                canvas:drawRect('fill', 0, 0, dx,dy)
                canvas:attrColor('white')
                canvas:attrFont('arial',22,'bold')
                canvas:drawText(dx/3, dy/4, "Confirma seleção do item 2?")
                print ("Selecionou item 2...")
                item1 = false
                item2 = true
                item3 = false
                canvas:flush()
            end
        end
        if evt.name == 'i3' then
            if item3 == false then
                canvas:attrColor('black')
                canvas:drawRect('fill', 0, 0, dx,dy)
                canvas:attrColor('white')
                canvas:attrFont('arial',22,'bold')
                canvas:drawText(dx/3, dy/4, "Confirma seleção do item 3?")
                print ("Selecionou item 3...")
                item1 = false
                item2 = false
                item3 = true
                canvas:flush()
            end
        end
        --Clicou no botao sim
        if evt.name == "sim-btn" then
            if item3 then
                canvas:attrColor('black')
                canvas:drawRect('fill', 0, 0, dx,dy)
                canvas:attrColor('white')
                canvas:attrFont('arial',22,'bold')
                canvas:drawText(dx/3, dy/4, "Parabéns, você acertou!")
                canvas:flush()
                event.timer (3000, stop)
            elseif item1 or item2 then
                canvas:attrColor('black')
                canvas:drawRect('fill', 0, 0, dx,dy)
                canvas:attrColor('white')
                canvas:attrFont('arial',22,'bold')
                canvas:drawText(dx/3, dy/4, "Que pena, você errou!")
                canvas:flush()
                event.timer (3000, stop)
            end
        end
        --Clicou no botao nao
        if evt.name == "nao-btn" then
            canvas:attrColor('black')
            canvas:drawRect('fill', 0, 0, dx,dy)
            canvas:attrColor('white')
            canvas:attrFont('arial',22,'bold')
            canvas:drawText(dx/3, dy/4, "")
            canvas:flush()
        end
    end
end


event.register(handler, 'ncl')