local playerName = "ICU_XxWhiteknightxX"  -- เปลี่ยนเป็นชื่อของคุณในเกม

while true do
    -- รอเวลา 1 วินาที
    wait()

    -- ตรวจสอบทุก Model ใน workspace
    for _, obj in ipairs(workspace:GetChildren()) do
        -- ตรวจสอบว่าเป็น Model และชื่อของ Model ตรงกับชื่อของผู้เล่นที่ต้องการ
        if obj:IsA("Model") and obj.Name == playerName then
            local player = game.Players[obj.Name]
            
            -- ค้นหาตัว CharacterTrait ภายใน Model ของผู้เล่น
            local characterTrait = obj:FindFirstChild("CharacterTrait")
            
            if characterTrait then
                -- ค้นหาค่าของ Health และ HealthMax ใน CharacterTrait
                local health = characterTrait:FindFirstChild("Health")
                local healthMax = characterTrait:FindFirstChild("HealthMax")
                
                if health and healthMax then
                    -- ตั้งค่า Health ให้เท่ากับ HealthMax เพื่อป้องกันการลดเลือด
                    -- รีเซ็ตค่า Health ทุกครั้งที่มีการเปลี่ยนแปลง
                    health.Value = healthMax.Value

                    -- ป้องกันไม่ให้เลือดลดจากการโจมตี
                    health:GetPropertyChangedSignal("Value"):Connect(function()
                        if health.Value < healthMax.Value then
                            health.Value = healthMax.Value  -- รีเซ็ตค่า Health เมื่อมีการลดเลือด
                        end
                    end)
                end
            end
        end
    end
end
