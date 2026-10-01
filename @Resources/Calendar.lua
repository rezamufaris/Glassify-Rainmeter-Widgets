function Initialize()
    MeasureToday = SKIN:GetMeasure('MeasureToday')
end

function Update()
    local today = tonumber(MeasureToday:GetStringValue())
    local year = os.date("%Y")
    local month = os.date("%m")
    
    local firstDay = os.time{year=year, month=month, day=1}
    local startDayOfWeek = tonumber(os.date("%w", firstDay))
    local daysInMonth = tonumber(os.date("%d", os.time{year=year, month=month+1, day=0}))
    
    local isSmallWidget = (SKIN:GetMeter('MeterBackground'):GetW() < 200)
    
    local startX = isSmallWidget and 26 or 25
    local stepX = isSmallWidget and 21 or 50
    local startY = isSmallWidget and 60 or 70
    local stepY = isSmallWidget and 20 or 22
    local offsetY = isSmallWidget and 6 or 7
    
    local dayCounter = 1
    for row = 1, 6 do
        for col = 0, 6 do
            local meterIndex = (row - 1) * 7 + col + 1
            local cellNumber = (row - 1) * 7 + col
            
            if cellNumber >= startDayOfWeek and dayCounter <= daysInMonth then
                SKIN:Bang('!SetOption', 'Day'..meterIndex, 'Text', dayCounter)
                if dayCounter == today then
                    local circleX = startX + (col * stepX)
                    local circleY = startY + ((row - 1) * stepY) + offsetY
                    
                    SKIN:Bang('!SetOption', 'Day'..meterIndex, 'FontColor', '15,20,32,255')
                    SKIN:Bang('!SetOption', 'Day'..meterIndex, 'StringStyle', 'Bold')
                    SKIN:Bang('!SetOption', 'MeterTodayCircle', 'X', circleX)
                    SKIN:Bang('!SetOption', 'MeterTodayCircle', 'Y', circleY)
                else
                    SKIN:Bang('!SetOption', 'Day'..meterIndex, 'FontColor', '#TextPrimary#')
                    SKIN:Bang('!SetOption', 'Day'..meterIndex, 'StringStyle', 'Normal')
                end
                dayCounter = dayCounter + 1
            else
                SKIN:Bang('!SetOption', 'Day'..meterIndex, 'Text', '')
            end
        end
    end
    return "Calendar Updated"
end