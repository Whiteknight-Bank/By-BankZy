--NOTE: Currently in beta! Not representative of final product.
-- USED GLOBALS: script, FinishedLoading, DevilFruit, DevilFruit2, VTCmel, ChargeModule, ChargeBar1, ChargeBar2, ChargeBar3, ChargeBar4, ChargeBar5, ChargeBar6, ChargeMode, CanP1, P1Charging, P1Charge, CanP2, P2Charging, P2Charge, CanP3, P3Charging, P3Charge, CanP4, P4Charging, P4Charge, CanP5, P5Charging, P5Charge, CanP6, P6Charging, P6Charge, DFDisabled, FDPModule, FlightDisablers, AbilityActivated, trackA1, trackA2, trackA3, trackA4, trackA5, trackA6, Power1, Power2, Power3, Power4, Power5, Power6, Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9, Button10, Button11, Button12, SP, NewSP, DPAD, Conser, UpdateDPAD.
[003] :001:GETIMPORT      v0 = wait
[004] :001:CALL           v0()
[006] :001:GETIMPORT      v1 = script
[008] :001:GETTABLEKS     v0 = v1.Parent
[009] :001:JUMPIF         if not v0 then -- goto #10
end
[010] :001:JUMPBACK       -- jump back to #2
[012] :002:GETIMPORT      v0 = wait
[013] :002:CALL           v0()
[015] :002:GETIMPORT      v2 = script
[017] :002:GETTABLEKS     v1 = v2.Parent
[019] :002:GETTABLEKS     v0 = v1.Parent
[020] :002:JUMPIF         if not v0 then -- goto #21
end
[021] :002:JUMPBACK       -- jump back to #11
[023] :003:GETIMPORT      v3 = script
[025] :003:GETTABLEKS     v2 = v3.Parent
[027] :003:GETTABLEKS     v1 = v2.Parent
[029] :003:GETTABLEKS     v0 = v1.ClassName
[031] :003:JUMPXEQKS      if v0 == "Script" then -- goto #33
[032] :004:RETURN         return
end
[034] :006:GETIMPORT      v2 = game
[036] :006:GETTABLEKS     v1 = v2.Players
[038] :006:GETTABLEKS     v0 = v1.LocalPlayer
[040] :012:GETIMPORT      v1 = wait
[041] :012:CALL           v1()
[043] :012:GETIMPORT      v1 = workspace
[044] :012:LOADK          v3 = "UserData"
[047] :012:CALL           v1 = v1:FindFirstChild(v3)
[048] :012:JUMPIF         if not v1 then -- goto #49
end
[049] :012:JUMPBACK       -- jump back to #39
[051] :013:GETIMPORT      v1 = wait
[052] :013:CALL           v1()
[054] :013:GETIMPORT      v2 = workspace
[056] :013:GETTABLEKS     v1 = v2.UserData
[057] :013:LOADK          v4 = "User_"
[059] :013:GETTABLEKS     v5 = v0.UserId
[060] :013:CONCAT         v3 = v4 .. v5
[063] :013:CALL           v1 = v1:FindFirstChild(v3)
[064] :013:JUMPIF         if not v1 then -- goto #65
end
[065] :013:JUMPBACK       -- jump back to #50
[067] :014:GETIMPORT      v2 = workspace
[069] :014:GETTABLEKS     v1 = v2.UserData
[070] :014:LOADK          v4 = "User_"
[072] :014:GETTABLEKS     v5 = v0.UserId
[073] :014:CONCAT         v3 = v4 .. v5
[076] :014:CALL           v1 = v1:FindFirstChild(v3)
[078] :015:GETIMPORT      v2 = wait
[079] :015:CALL           v2()
[080] :015:LOADK          v4 = "Data"
[083] :015:CALL           v2 = v2:FindFirstChild(v4)
[084] :015:JUMPIF         if not v2 then -- goto #85
end
[085] :015:JUMPBACK       -- jump back to #77
[087] :016:GETIMPORT      v2 = wait
[088] :016:CALL           v2()
[090] :016:GETTABLEKS     v2 = v1.Data
[091] :016:LOADK          v4 = "MeleeLevel"
[094] :016:CALL           v2 = v2:FindFirstChild(v4)
[095] :016:JUMPIF         if not v2 then -- goto #96
end
[096] :016:JUMPBACK       -- jump back to #86
[098] :017:GETIMPORT      v2 = wait
[099] :017:CALL           v2()
[101] :017:GETTABLEKS     v2 = v1.Data
[102] :017:LOADK          v4 = "DevilFruit"
[105] :017:CALL           v2 = v2:FindFirstChild(v4)
[106] :017:JUMPIF         if not v2 then -- goto #107
end
[107] :017:JUMPBACK       -- jump back to #97
[109] :018:GETIMPORT      v2 = wait
[110] :018:CALL           v2()
[112] :018:GETTABLEKS     v2 = v1.Data
[113] :018:LOADK          v4 = "DevilFruit2"
[116] :018:CALL           v2 = v2:FindFirstChild(v4)
[117] :018:JUMPIF         if not v2 then -- goto #118
end
[118] :018:JUMPBACK       -- jump back to #108
[120] :019:GETIMPORT      v2 = wait
[121] :019:CALL           v2()
[122] :019:LOADK          v4 = "FinishedLoading"
[125] :019:CALL           v2 = v2:FindFirstChild(v4)
[126] :019:JUMPIF         if not v2 then -- goto #127
end
[127] :019:JUMPBACK       -- jump back to #119
[128] :020:LOADK          v4 = "FinishedLoading"
[131] :020:CALL           v2 = v2:FindFirstChild(v4)
[133] :020:SETGLOBAL      FinishedLoading = v2
[135] :021:GETIMPORT      v2 = wait
[136] :021:CALL           v2()
[138] :021:GETGLOBAL      v3 = FinishedLoading
[140] :021:GETTABLEKS     v2 = v3.Value
[142] :021:JUMPXEQKB      if v2 ~= true then -- goto #144
[143] :021:JUMPBACK       -- jump back to #134
end
[145] :022:GETTABLEKS     v2 = v1.Data
[146] :022:LOADK          v4 = "DevilFruit"
[149] :022:CALL           v2 = v2:FindFirstChild(v4)
[151] :022:SETGLOBAL      DevilFruit = v2
[153] :023:GETTABLEKS     v2 = v1.Data
[154] :023:LOADK          v4 = "DevilFruit2"
[157] :023:CALL           v2 = v2:FindFirstChild(v4)
[159] :023:SETGLOBAL      DevilFruit2 = v2
[161] :024:GETIMPORT      v4 = script
[163] :024:GETTABLEKS     v3 = v4.RemoteEvent
[165] :024:GETTABLEKS     v2 = v3.RemoteFunction
[168] :024:CALL           v2 = v2:InvokeServer()
[170] :024:SETGLOBAL      VTCmel = v2
[172] :026:GETIMPORT      v3 = script
[174] :026:GETTABLEKS     v2 = v3.Parent
[175] :026:LOADK          v4 = "ChargeModule"
[178] :026:CALL           v2 = v2:FindFirstChild(v4)
[179] :026:JUMPIF         if not v2 then -- goto #192
[181] :027:GETIMPORT      v2 = wait
[182] :027:CALL           v2()
[184] :027:GETIMPORT      v3 = script
[186] :027:GETTABLEKS     v2 = v3.Parent
[187] :027:LOADK          v4 = "ChargeModule"
[190] :027:CALL           v2 = v2:FindFirstChild(v4)
[191] :027:JUMPIF         if not v2 then -- goto #192
end
end
[192] :027:JUMPBACK       -- jump back to #180
[194] :029:GETIMPORT      v2 = require
[196] :029:GETIMPORT      v5 = script
[198] :029:GETTABLEKS     v4 = v5.Parent
[200] :029:GETTABLEKS     v3 = v4.ChargeModule
[201] :029:CALL           v2 = v2(v3)
[203] :029:SETGLOBAL      ChargeModule = v2
[204] :030:LOADNIL        v2 = nil
[206] :030:SETGLOBAL      ChargeBar1 = v2
[207] :031:LOADNIL        v2 = nil
[209] :031:SETGLOBAL      ChargeBar2 = v2
[210] :032:LOADNIL        v2 = nil
[212] :032:SETGLOBAL      ChargeBar3 = v2
[213] :033:LOADNIL        v2 = nil
[215] :033:SETGLOBAL      ChargeBar4 = v2
[216] :034:LOADNIL        v2 = nil
[218] :034:SETGLOBAL      ChargeBar5 = v2
[219] :035:LOADNIL        v2 = nil
[221] :035:SETGLOBAL      ChargeBar6 = v2
[222] :037:LOADB          v2 = false
[224] :039:GETIMPORT      v3 = wait
[225] :039:CALL           v3()
[227] :039:GETIMPORT      v3 = workspace
[228] :039:LOADK          v5 = "ResourceHolder"
[231] :039:CALL           v3 = v3:FindFirstChild(v5)
[232] :039:JUMPIF         if not v3 then -- goto #233
end
[233] :039:JUMPBACK       -- jump back to #223
[235] :040:GETIMPORT      v3 = wait
[236] :040:CALL           v3()
[238] :040:GETIMPORT      v4 = workspace
[240] :040:GETTABLEKS     v3 = v4.ResourceHolder
[241] :040:LOADK          v6 = "Resources_"
[243] :040:GETTABLEKS     v7 = v0.UserId
[244] :040:CONCAT         v5 = v6 .. v7
[247] :040:CALL           v3 = v3:FindFirstChild(v5)
[248] :040:JUMPIF         if not v3 then -- goto #249
end
[249] :040:JUMPBACK       -- jump back to #234
[251] :041:GETIMPORT      v4 = workspace
[253] :041:GETTABLEKS     v3 = v4.ResourceHolder
[254] :041:LOADK          v6 = "Resources_"
[256] :041:GETTABLEKS     v7 = v0.UserId
[257] :041:CONCAT         v5 = v6 .. v7
[260] :041:CALL           v3 = v3:FindFirstChild(v5)
[261] :043:LOADK          v4 = "Right"
[263] :043:SETGLOBAL      ChargeMode = v4
[264] :045:LOADB          v4 = true
[266] :045:SETGLOBAL      CanP1 = v4
[267] :046:LOADB          v4 = false
[269] :046:SETGLOBAL      P1Charging = v4
[270] :047:LOADN          v4 = 4
[272] :047:SETGLOBAL      P1Charge = v4
[273] :049:LOADB          v4 = true
[275] :049:SETGLOBAL      CanP2 = v4
[276] :050:LOADB          v4 = false
[278] :050:SETGLOBAL      P2Charging = v4
[279] :051:LOADN          v4 = 4
[281] :051:SETGLOBAL      P2Charge = v4
[282] :053:LOADB          v4 = true
[284] :053:SETGLOBAL      CanP3 = v4
[285] :054:LOADB          v4 = false
[287] :054:SETGLOBAL      P3Charging = v4
[288] :055:LOADN          v4 = 4
[290] :055:SETGLOBAL      P3Charge = v4
[291] :057:LOADB          v4 = true
[293] :057:SETGLOBAL      CanP4 = v4
[294] :058:LOADB          v4 = false
[296] :058:SETGLOBAL      P4Charging = v4
[297] :059:LOADN          v4 = 4
[299] :059:SETGLOBAL      P4Charge = v4
[300] :061:LOADB          v4 = true
[302] :061:SETGLOBAL      CanP5 = v4
[303] :062:LOADB          v4 = false
[305] :062:SETGLOBAL      P5Charging = v4
[306] :063:LOADN          v4 = 4
[308] :063:SETGLOBAL      P5Charge = v4
[309] :065:LOADB          v4 = true
[311] :065:SETGLOBAL      CanP6 = v4
[312] :066:LOADB          v4 = false
[314] :066:SETGLOBAL      P6Charging = v4
[315] :067:LOADN          v4 = 4
[317] :067:SETGLOBAL      P6Charge = v4
[318] :069:DUPCLOSURE     
local function DFDisabled()
-- proto pool id: 0
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 17
-- size constants: 8
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :070:GETIMPORT      v1 = script
[004] :070:GETTABLEKS     v0 = v1.RemoteEvent
[006] :070:GETGLOBAL      v2 = VTCmel
[008] :070:GETIMPORT      v6 = script
[010] :070:GETTABLEKS     v4 = v6.Name
[011] :070:LOADK          v5 = "Power2"
[012] :070:CONCAT         v3 = v4 .. v5
[013] :070:LOADK          v4 = "DF_Disabled"
[016] :070:CALL           v0:FireServer(v2, v3, v4)
[017] :071:RETURN         return
end
v4 = DFDisabled
[320] :069:SETGLOBAL      DFDisabled = v4
[322] :072:GETIMPORT      v4 = wait
[323] :072:CALL           v4()
[325] :072:GETIMPORT      v6 = script
[327] :072:GETTABLEKS     v5 = v6.Parent
[329] :072:GETTABLEKS     v4 = v5.Parent
[330] :072:LOADK          v6 = "DF_Disabled"
[333] :072:CALL           v4 = v4:FindFirstChild(v6)
[334] :072:JUMPIF         if not v4 then -- goto #335
end
[335] :072:JUMPBACK       -- jump back to #321
[337] :073:GETIMPORT      v7 = script
[339] :073:GETTABLEKS     v6 = v7.Parent
[341] :073:GETTABLEKS     v5 = v6.Parent
[343] :073:GETTABLEKS     v4 = v5.DF_Disabled
[344] :073:LOADK          v6 = "Value"
[347] :073:CALL           v4 = v4:GetPropertyChangedSignal(v6)
[348] :073:DUPCLOSURE     v6 = function()
-- proto pool id: 1
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 16
-- size constants: 6
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :074:GETIMPORT      v4 = script
[004] :074:GETTABLEKS     v3 = v4.Parent
[006] :074:GETTABLEKS     v2 = v3.Parent
[008] :074:GETTABLEKS     v1 = v2.DF_Disabled
[010] :074:GETTABLEKS     v0 = v1.Value
[012] :074:JUMPXEQKB      if v0 == true then -- goto #16
[014] :075:GETGLOBAL      v0 = DFDisabled
[015] :075:CALL           v0()
end
[016] :077:RETURN         return
end
[351] :073:CALL           v4:Connect(v6)
[353] :079:GETIMPORT      v6 = script
[355] :079:GETTABLEKS     v5 = v6.Parent
[357] :079:GETTABLEKS     v4 = v5.Parent
[358] :079:LOADK          v6 = "FDP"
[361] :079:CALL           v4 = v4:FindFirstChild(v6)
[362] :079:JUMPIF         if not v4 then -- goto #377
[364] :080:GETIMPORT      v4 = wait
[365] :080:CALL           v4()
[367] :080:GETIMPORT      v6 = script
[369] :080:GETTABLEKS     v5 = v6.Parent
[371] :080:GETTABLEKS     v4 = v5.Parent
[372] :080:LOADK          v6 = "FDP"
[375] :080:CALL           v4 = v4:FindFirstChild(v6)
[376] :080:JUMPIF         if not v4 then -- goto #377
end
end
[377] :080:JUMPBACK       -- jump back to #363
[379] :082:GETIMPORT      v4 = require
[381] :082:GETIMPORT      v9 = script
[383] :082:GETTABLEKS     v8 = v9.Parent
[385] :082:GETTABLEKS     v7 = v8.Parent
[387] :082:GETTABLEKS     v6 = v7.FDP
[389] :082:GETTABLEKS     v5 = v6.FDPModule
[390] :082:CALL           v4 = v4(v5)
[392] :082:SETGLOBAL      FDPModule = v4
[394] :083:GETIMPORT      v7 = script
[396] :083:GETTABLEKS     v6 = v7.Parent
[398] :083:GETTABLEKS     v5 = v6.Parent
[400] :083:GETTABLEKS     v4 = v5.FDP
[401] :083:LOADK          v6 = "Value"
[404] :083:CALL           v4 = v4:GetPropertyChangedSignal(v6)
[405] :083:DUPCLOSURE     v6 = function()
-- proto pool id: 2
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 13
-- size constants: 6
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :084:GETIMPORT      v4 = script
[004] :084:GETTABLEKS     v3 = v4.Parent
[006] :084:GETTABLEKS     v2 = v3.Parent
[008] :084:GETTABLEKS     v1 = v2.FDP
[010] :084:GETTABLEKS     v0 = v1.Value
[012] :084:SETGLOBAL      FlightDisablers = v0
[013] :086:RETURN         return
end
[408] :083:CALL           v4:Connect(v6)
[409] :087:LOADN          v4 = 0
[411] :087:SETGLOBAL      FlightDisablers = v4
[412] :088:DUPCLOSURE     
local function AbilityActivated()
-- proto pool id: 4
-- num upvalues: 0
-- num inner protos: 1
-- size instructions: 7
-- size constants: 4
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: true
[002] :089:GETIMPORT      v0 = coroutine.wrap
[003] :089:DUPCLOSURE     v1 = function()
-- proto pool id: 3
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 7
-- size constants: 2
-- lineinfo gap: 24
-- max stack size: 3
-- is typed: false
[002] :090:GETGLOBAL      v0 = FDPModule
[003] :090:LOADN          v2 = 3
[006] :090:CALL           v0:AddFDP(v2)
[007] :091:RETURN         return
end
[004] :089:CALL           v0 = v0(v1)
[005] :092:MOVE           v1 = v0
[006] :092:CALL           v1()
[007] :093:RETURN         return
end
v4 = AbilityActivated
[414] :088:SETGLOBAL      AbilityActivated = v4
[415] :095:DUPCLOSURE     
local function Power1(p1, p2, p3)
-- proto pool id: 7
-- num upvalues: 2
-- num inner protos: 2
-- size instructions: 439
-- size constants: 79
-- lineinfo gap: 24
-- max stack size: 17
-- is typed: true
[002] :096:GETIMPORT      v4 = script
[004] :096:GETTABLEKS     v3 = v4.Parent
[006] :096:GETTABLEKS     v2 = v3.Parent
[008] :096:GETTABLEKS     v1 = v2.DF_Disabled
[010] :096:GETTABLEKS     v0 = v1.Value
[012] :096:JUMPXEQKB      if v0 == true then -- goto #14
[013] :096:RETURN         return
end
[014] :097:GETUPVAL       v2 = u_v1
[016] :097:GETTABLEKS     v1 = v2.Data
[018] :097:GETIMPORT      v6 = script
[020] :097:GETTABLEKS     v5 = v6.Power1
[022] :097:GETTABLEKS     v4 = v5.StatType
[024] :097:GETTABLEKS     v3 = v4.Value
[027] :097:CALL           v1 = v1:FindFirstChild(v3)
[029] :097:GETTABLEKS     v0 = v1.Value
[031] :098:GETIMPORT      v2 = script
[032] :098:LOADK          v4 = "Power1"
[035] :098:CALL           v2 = v2:FindFirstChild(v4)
[037] :098:GETTABLEKS     v1 = v2.Value
[039] :098:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :098:RETURN         return
end
[042] :099:GETGLOBAL      v1 = AbilityActivated
[043] :099:CALL           v1()
[045] :100:GETIMPORT      v1 = Enum.UserInputState.Begin
[047] :100:JUMPIFNOTEQ    if p2 ~= v1 then -- goto #237
[049] :100:GETGLOBAL      v1 = CanP1
[051] :100:JUMPXEQKB      if v1 == true then -- goto #237
[053] :102:GETGLOBAL      v1 = P2Charging
[055] :102:JUMPXEQKB      if v1 ~= true then -- goto #72
[057] :103:GETGLOBAL      v1 = P3Charging
[059] :103:JUMPXEQKB      if v1 ~= true then -- goto #72
[061] :104:GETGLOBAL      v1 = P4Charging
[063] :104:JUMPXEQKB      if v1 ~= true then -- goto #72
[065] :105:GETGLOBAL      v1 = P5Charging
[067] :105:JUMPXEQKB      if v1 ~= true then -- goto #72
[069] :106:GETGLOBAL      v1 = P6Charging
[071] :106:JUMPXEQKB      if v1 == true then -- goto #73
end
end
end
end
[072] :106:RETURN         return
end
[074] :108:GETGLOBAL      v1 = P1Charging
[076] :108:JUMPXEQKB      if v1 == false then -- goto #439
[077] :109:LOADB          v1 = true
[079] :109:SETGLOBAL      P1Charging = v1
[080] :110:GETUPVAL       v1 = u_v0
[083] :110:CALL           v1 = v1:GetMouse()
[085] :111:GETTABLEKS     v2 = v1.Hit
[087] :112:GETTABLEKS     v3 = v1.Target
[089] :113:GETIMPORT      v5 = script
[091] :113:GETTABLEKS     v4 = v5.RemoteEvent
[093] :113:GETGLOBAL      v6 = VTCmel
[094] :113:MOVE           v7 = p1
[095] :113:LOADK          v8 = "StartCharging"
[096] :113:MOVE           v9 = v2
[097] :113:MOVE           v10 = v3
[098] :113:LOADNIL        v11 = nil
[100] :113:GETGLOBAL      v12 = ChargeMode
[103] :113:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11, v12)
[104] :114:GETUPVAL       v5 = u_v0
[106] :114:GETTABLEKS     v4 = v5.Character
[107] :114:LOADK          v6 = "Humanoid"
[110] :114:CALL           v4 = v4:FindFirstChildOfClass(v6)
[111] :114:JUMPIFNOT      if v4 then -- goto #199
[112] :115:GETUPVAL       v5 = u_v0
[114] :115:GETTABLEKS     v4 = v5.Character
[115] :115:LOADK          v6 = "Humanoid"
[118] :115:CALL           v4 = v4:FindFirstChildOfClass(v6)
[120] :116:GETGLOBAL      v5 = ChargeMode
[122] :116:JUMPXEQKS      if v5 == "Right" then -- goto #162
[124] :117:GETIMPORT      v9 = script
[126] :117:GETTABLEKS     v8 = v9.Anims
[128] :117:GETTABLEKS     v7 = v8.Punch1RightCharge
[131] :117:CALL           v5 = v5:LoadAnimation(v7)
[133] :117:SETGLOBAL      trackA1 = v5
[135] :118:GETIMPORT      v9 = script
[137] :118:GETTABLEKS     v8 = v9.Anims
[139] :118:GETTABLEKS     v7 = v8.Punch1RightCharged
[142] :118:CALL           v5 = v5:LoadAnimation(v7)
[144] :118:SETGLOBAL      trackA2 = v5
[146] :119:GETGLOBAL      v6 = trackA1
[148] :119:GETTABLEKS     v5 = v6.Stopped
[149] :119:DUPCLOSURE     v7 = function()
-- proto pool id: 5
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :120:GETGLOBAL      v0 = P1Charging
[004] :120:JUMPXEQKB      if v0 == true then -- goto #10
[006] :121:GETGLOBAL      v0 = trackA2
[009] :121:CALL           v0:Play()
end
[010] :123:RETURN         return
end
[152] :119:CALL           v5:Connect(v7)
[154] :124:GETGLOBAL      v5 = trackA1
[155] :124:LOADK          v7 = 0.1
[156] :124:LOADN          v8 = 1
[157] :124:LOADN          v9 = 4
[160] :124:CALL           v5:Play(v7, v8, v9)
[161] :124:JUMP           -- jump to #199
end
[163] :126:GETIMPORT      v9 = script
[165] :126:GETTABLEKS     v8 = v9.Anims
[167] :126:GETTABLEKS     v7 = v8.Punch1LeftCharge
[170] :126:CALL           v5 = v5:LoadAnimation(v7)
[172] :126:SETGLOBAL      trackA3 = v5
[174] :127:GETIMPORT      v9 = script
[176] :127:GETTABLEKS     v8 = v9.Anims
[178] :127:GETTABLEKS     v7 = v8.Punch1LeftCharged
[181] :127:CALL           v5 = v5:LoadAnimation(v7)
[183] :127:SETGLOBAL      trackA4 = v5
[185] :128:GETGLOBAL      v6 = trackA3
[187] :128:GETTABLEKS     v5 = v6.Stopped
[188] :128:DUPCLOSURE     v7 = function()
-- proto pool id: 6
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :129:GETGLOBAL      v0 = P1Charging
[004] :129:JUMPXEQKB      if v0 == true then -- goto #10
[006] :130:GETGLOBAL      v0 = trackA4
[009] :130:CALL           v0:Play()
end
[010] :132:RETURN         return
end
[191] :128:CALL           v5:Connect(v7)
[193] :133:GETGLOBAL      v5 = trackA3
[194] :133:LOADK          v7 = 0.1
[195] :133:LOADN          v8 = 1
[196] :133:LOADN          v9 = 4
[199] :133:CALL           v5:Play(v7, v8, v9)
[201] :137:GETIMPORT      v4 = wait
[202] :137:CALL           v4()
[204] :138:GETGLOBAL      v4 = P1Charge
[205] :138:LOADN          v5 = 100
[207] :138:JUMPIFNOTLT    if v4 < v5 then -- goto #231
[209] :138:GETGLOBAL      v4 = CanP1
[211] :138:JUMPXEQKB      if v4 == true then -- goto #231
[213] :139:GETGLOBAL      v5 = P1Charge
[214] :139:ADDK           v4 = v5 + 1
[216] :139:SETGLOBAL      P1Charge = v4
[218] :140:GETGLOBAL      v4 = ChargeModule
[220] :140:GETIMPORT      v9 = script
[222] :140:GETTABLEKS     v7 = v9.Name
[223] :140:LOADK          v8 = 1
[224] :140:CONCAT         v6 = v7 .. v8
[226] :140:GETGLOBAL      v7 = P1Charge
[227] :140:LOADN          v8 = 100
[230] :140:CALL           v4:UpdateChargeBar(v6, v7, v8)
end
end
[232] :142:GETGLOBAL      v4 = P1Charging
[234] :142:JUMPXEQKB      if v4 ~= false then -- goto #439
[235] :142:JUMPBACK       -- jump back to #200
[236] :142:RETURN         return
end
end
[238] :144:GETIMPORT      v1 = Enum.UserInputState.End
[240] :144:JUMPIFNOTEQ    if p2 ~= v1 then -- goto #439
[242] :144:GETGLOBAL      v1 = CanP1
[244] :144:JUMPXEQKB      if v1 == true then -- goto #439
[246] :145:GETGLOBAL      v1 = P1Charging
[248] :145:JUMPXEQKB      if v1 == true then -- goto #439
[249] :146:LOADB          v1 = false
[251] :146:SETGLOBAL      P1Charging = v1
[252] :147:GETUPVAL       v1 = u_v0
[255] :147:CALL           v1 = v1:GetMouse()
[257] :148:GETTABLEKS     v2 = v1.Hit
[259] :149:GETTABLEKS     v3 = v1.Target
[261] :150:GETIMPORT      v5 = script
[263] :150:GETTABLEKS     v4 = v5.RemoteEvent
[265] :150:GETGLOBAL      v6 = VTCmel
[266] :150:MOVE           v7 = p1
[267] :150:LOADK          v8 = "StopCharging"
[268] :150:MOVE           v9 = v2
[269] :150:MOVE           v10 = v3
[271] :150:GETGLOBAL      v11 = P1Charge
[274] :150:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11)
[275] :151:LOADB          v4 = false
[277] :151:SETGLOBAL      CanP1 = v4
[278] :152:LOADN          v4 = 4
[280] :152:SETGLOBAL      P1Charge = v4
[282] :153:GETGLOBAL      v4 = trackA1
[284] :153:JUMPXEQKNIL    if v4 ~= nil then -- goto #290
[286] :153:GETGLOBAL      v4 = trackA1
[289] :153:CALL           v4:Stop()
end
[291] :154:GETGLOBAL      v4 = trackA2
[293] :154:JUMPXEQKNIL    if v4 ~= nil then -- goto #299
[295] :154:GETGLOBAL      v4 = trackA2
[298] :154:CALL           v4:Stop()
end
[300] :155:GETGLOBAL      v4 = trackA3
[302] :155:JUMPXEQKNIL    if v4 ~= nil then -- goto #308
[304] :155:GETGLOBAL      v4 = trackA3
[307] :155:CALL           v4:Stop()
end
[309] :156:GETGLOBAL      v4 = trackA4
[311] :156:JUMPXEQKNIL    if v4 ~= nil then -- goto #317
[313] :156:GETGLOBAL      v4 = trackA4
[316] :156:CALL           v4:Stop()
end
[317] :157:GETUPVAL       v5 = u_v0
[319] :157:GETTABLEKS     v4 = v5.Character
[320] :157:LOADK          v6 = "Humanoid"
[323] :157:CALL           v4 = v4:FindFirstChildOfClass(v6)
[324] :157:JUMPIFNOT      if v4 then -- goto #380
[325] :158:GETUPVAL       v5 = u_v0
[327] :158:GETTABLEKS     v4 = v5.Character
[328] :158:LOADK          v6 = "Humanoid"
[331] :158:CALL           v4 = v4:FindFirstChildOfClass(v6)
[333] :159:GETGLOBAL      v5 = ChargeMode
[335] :159:JUMPXEQKS      if v5 == "Right" then -- goto #359
[337] :160:GETIMPORT      v9 = script
[339] :160:GETTABLEKS     v8 = v9.Anims
[341] :160:GETTABLEKS     v7 = v8.Punch1RightPunch
[344] :160:CALL           v5 = v5:LoadAnimation(v7)
[346] :160:SETGLOBAL      trackA5 = v5
[348] :161:GETGLOBAL      v5 = trackA5
[349] :161:LOADK          v7 = 0.01
[350] :161:LOADN          v8 = 1
[351] :161:LOADN          v9 = 32
[354] :161:CALL           v5:Play(v7, v8, v9)
[355] :162:LOADK          v5 = "Left"
[357] :162:SETGLOBAL      ChargeMode = v5
[358] :162:JUMP           -- jump to #380
end
[360] :164:GETIMPORT      v9 = script
[362] :164:GETTABLEKS     v8 = v9.Anims
[364] :164:GETTABLEKS     v7 = v8.Punch1LeftPunch
[367] :164:CALL           v5 = v5:LoadAnimation(v7)
[369] :164:SETGLOBAL      trackA6 = v5
[371] :165:GETGLOBAL      v5 = trackA6
[372] :165:LOADK          v7 = 0.01
[373] :165:LOADN          v8 = 1
[374] :165:LOADN          v9 = 32
[377] :165:CALL           v5:Play(v7, v8, v9)
[378] :166:LOADK          v5 = "Right"
[380] :166:SETGLOBAL      ChargeMode = v5
[381] :169:GETUPVAL       v5 = u_v0
[383] :169:GETTABLEKS     v4 = v5.Character
[385] :169:JUMPXEQKNIL    if v4 ~= nil then -- goto #432
[386] :170:GETUPVAL       v5 = u_v0
[388] :170:GETTABLEKS     v4 = v5.Character
[389] :170:LOADK          v6 = "HumanoidRootPart"
[392] :170:CALL           v4 = v4:FindFirstChild(v6)
[393] :170:JUMPIFNOT      if v4 then -- goto #431
[394] :171:GETUPVAL       v5 = u_v0
[396] :171:GETTABLEKS     v4 = v5.Character
[397] :171:LOADK          v6 = "HumanoidRootPart"
[400] :171:CALL           v4 = v4:FindFirstChild(v6)
[401] :172:GETUPVAL       v5 = u_v0
[404] :172:CALL           v5 = v5:GetMouse()
[406] :173:GETIMPORT      v6 = CFrame.new
[408] :173:GETTABLEKS     v7 = v4.Position
[410] :173:GETTABLEKS     v11 = v5.Hit
[412] :173:GETTABLEKS     v10 = v11.p
[414] :173:GETTABLEKS     v9 = v10.X
[416] :173:GETTABLEKS     v11 = v4.Position
[418] :173:GETTABLEKS     v10 = v11.Y
[420] :173:GETTABLEKS     v13 = v5.Hit
[422] :173:GETTABLEKS     v12 = v13.p
[424] :173:GETTABLEKS     v11 = v12.Z
[427] :173:GETIMPORT      v8 = Vector3.new
[428] :173:CALL           v8 = v8(v9, v10, v11)
[429] :173:CALL           v6 = v6(v7, v8)
[431] :173:SETTABLEKS     v4.CFrame = v6
end
[433] :176:GETIMPORT      v4 = wait
[434] :176:LOADK          v5 = 0.25
[435] :176:CALL           v4(v5)
[436] :177:LOADB          v4 = true
[438] :177:SETGLOBAL      CanP1 = v4
end
end
end
end
end
[439] :180:RETURN         return
end
v4 = Power1
[419] :095:SETGLOBAL      Power1 = v4
[420] :181:DUPCLOSURE     
local function Power2(p4, p5, p6)
-- proto pool id: 8
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 58
-- size constants: 17
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: true
[002] :182:GETIMPORT      v4 = script
[004] :182:GETTABLEKS     v3 = v4.Parent
[006] :182:GETTABLEKS     v2 = v3.Parent
[008] :182:GETTABLEKS     v1 = v2.DF_Disabled
[010] :182:GETTABLEKS     v0 = v1.Value
[012] :182:JUMPXEQKB      if v0 == true then -- goto #14
[013] :182:RETURN         return
end
[014] :183:GETUPVAL       v2 = u_v1
[016] :183:GETTABLEKS     v1 = v2.Data
[018] :183:GETIMPORT      v6 = script
[020] :183:GETTABLEKS     v5 = v6.Power2
[022] :183:GETTABLEKS     v4 = v5.StatType
[024] :183:GETTABLEKS     v3 = v4.Value
[027] :183:CALL           v1 = v1:FindFirstChild(v3)
[029] :183:GETTABLEKS     v0 = v1.Value
[031] :184:GETIMPORT      v2 = script
[032] :184:LOADK          v4 = "Power2"
[035] :184:CALL           v2 = v2:FindFirstChild(v4)
[037] :184:GETTABLEKS     v1 = v2.Value
[039] :184:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :184:RETURN         return
end
[042] :185:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :185:JUMPIFNOTEQ    if p5 ~= v1 then -- goto #58
[046] :186:GETGLOBAL      v1 = AbilityActivated
[047] :186:CALL           v1()
[049] :187:GETIMPORT      v2 = script
[051] :187:GETTABLEKS     v1 = v2.RemoteEvent
[053] :187:GETGLOBAL      v3 = VTCmel
[054] :187:MOVE           v4 = p4
[057] :187:CALL           v1:FireServer(v3, v4)
end
[058] :189:RETURN         return
end
v4 = Power2
[423] :181:SETGLOBAL      Power2 = v4
[424] :190:DUPCLOSURE     
local function Power3(p7, p8, p9)
-- proto pool id: 9
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 69
-- size constants: 21
-- lineinfo gap: 24
-- max stack size: 14
-- is typed: true
[002] :191:GETIMPORT      v4 = script
[004] :191:GETTABLEKS     v3 = v4.Parent
[006] :191:GETTABLEKS     v2 = v3.Parent
[008] :191:GETTABLEKS     v1 = v2.DF_Disabled
[010] :191:GETTABLEKS     v0 = v1.Value
[012] :191:JUMPXEQKB      if v0 == true then -- goto #14
[013] :191:RETURN         return
end
[014] :194:GETUPVAL       v2 = u_v1
[016] :194:GETTABLEKS     v1 = v2.Data
[018] :194:GETIMPORT      v6 = script
[020] :194:GETTABLEKS     v5 = v6.Power3
[022] :194:GETTABLEKS     v4 = v5.StatType
[024] :194:GETTABLEKS     v3 = v4.Value
[027] :194:CALL           v1 = v1:FindFirstChild(v3)
[029] :194:GETTABLEKS     v0 = v1.Value
[031] :195:GETIMPORT      v2 = script
[032] :195:LOADK          v4 = "Power3"
[035] :195:CALL           v2 = v2:FindFirstChild(v4)
[037] :195:GETTABLEKS     v1 = v2.Value
[039] :195:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :195:RETURN         return
end
[042] :197:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :197:JUMPIFNOTEQ    if p8 ~= v1 then -- goto #69
[046] :198:GETGLOBAL      v1 = AbilityActivated
[047] :198:CALL           v1()
[048] :199:GETUPVAL       v1 = u_v0
[051] :199:CALL           v1 = v1:GetMouse()
[053] :200:GETTABLEKS     v2 = v1.Hit
[055] :201:GETTABLEKS     v3 = v1.Target
[057] :202:GETIMPORT      v5 = script
[059] :202:GETTABLEKS     v4 = v5.RemoteEvent
[061] :202:GETGLOBAL      v6 = VTCmel
[062] :202:MOVE           v7 = p7
[063] :202:LOADK          v8 = "Create"
[064] :202:MOVE           v9 = v2
[065] :202:MOVE           v10 = v3
[068] :202:CALL           v4:FireServer(v6, v7, v8, v9, v10)
end
[069] :204:RETURN         return
end
v4 = Power3
[428] :190:SETGLOBAL      Power3 = v4
[429] :205:DUPCLOSURE     
local function Power4(p10, p11, p12)
-- proto pool id: 10
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 69
-- size constants: 21
-- lineinfo gap: 24
-- max stack size: 14
-- is typed: true
[002] :206:GETIMPORT      v4 = script
[004] :206:GETTABLEKS     v3 = v4.Parent
[006] :206:GETTABLEKS     v2 = v3.Parent
[008] :206:GETTABLEKS     v1 = v2.DF_Disabled
[010] :206:GETTABLEKS     v0 = v1.Value
[012] :206:JUMPXEQKB      if v0 == true then -- goto #14
[013] :206:RETURN         return
end
[014] :209:GETUPVAL       v2 = u_v1
[016] :209:GETTABLEKS     v1 = v2.Data
[018] :209:GETIMPORT      v6 = script
[020] :209:GETTABLEKS     v5 = v6.Power4
[022] :209:GETTABLEKS     v4 = v5.StatType
[024] :209:GETTABLEKS     v3 = v4.Value
[027] :209:CALL           v1 = v1:FindFirstChild(v3)
[029] :209:GETTABLEKS     v0 = v1.Value
[031] :210:GETIMPORT      v2 = script
[032] :210:LOADK          v4 = "Power4"
[035] :210:CALL           v2 = v2:FindFirstChild(v4)
[037] :210:GETTABLEKS     v1 = v2.Value
[039] :210:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :210:RETURN         return
end
[042] :212:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :212:JUMPIFNOTEQ    if p11 ~= v1 then -- goto #69
[046] :213:GETGLOBAL      v1 = AbilityActivated
[047] :213:CALL           v1()
[048] :214:GETUPVAL       v1 = u_v0
[051] :214:CALL           v1 = v1:GetMouse()
[053] :215:GETTABLEKS     v2 = v1.Hit
[055] :216:GETTABLEKS     v3 = v1.Target
[057] :217:GETIMPORT      v5 = script
[059] :217:GETTABLEKS     v4 = v5.RemoteEvent
[061] :217:GETGLOBAL      v6 = VTCmel
[062] :217:MOVE           v7 = p10
[063] :217:LOADK          v8 = "Create"
[064] :217:MOVE           v9 = v2
[065] :217:MOVE           v10 = v3
[068] :217:CALL           v4:FireServer(v6, v7, v8, v9, v10)
end
[069] :219:RETURN         return
end
v4 = Power4
[433] :205:SETGLOBAL      Power4 = v4
[434] :220:DUPCLOSURE     
local function Power5(p13, p14, p15)
-- proto pool id: 11
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 59
-- size constants: 18
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: true
[002] :221:GETIMPORT      v4 = script
[004] :221:GETTABLEKS     v3 = v4.Parent
[006] :221:GETTABLEKS     v2 = v3.Parent
[008] :221:GETTABLEKS     v1 = v2.DF_Disabled
[010] :221:GETTABLEKS     v0 = v1.Value
[012] :221:JUMPXEQKB      if v0 == true then -- goto #14
[013] :221:RETURN         return
end
[014] :224:GETUPVAL       v2 = u_v1
[016] :224:GETTABLEKS     v1 = v2.Data
[018] :224:GETIMPORT      v6 = script
[020] :224:GETTABLEKS     v5 = v6.Power5
[022] :224:GETTABLEKS     v4 = v5.StatType
[024] :224:GETTABLEKS     v3 = v4.Value
[027] :224:CALL           v1 = v1:FindFirstChild(v3)
[029] :224:GETTABLEKS     v0 = v1.Value
[031] :225:GETIMPORT      v2 = script
[032] :225:LOADK          v4 = "Power5"
[035] :225:CALL           v2 = v2:FindFirstChild(v4)
[037] :225:GETTABLEKS     v1 = v2.Value
[039] :225:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :225:RETURN         return
end
[042] :227:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :227:JUMPIFNOTEQ    if p14 ~= v1 then -- goto #59
[046] :228:GETGLOBAL      v1 = AbilityActivated
[047] :228:CALL           v1()
[049] :230:GETIMPORT      v2 = script
[051] :230:GETTABLEKS     v1 = v2.RemoteEvent
[053] :230:GETGLOBAL      v3 = VTCmel
[054] :230:MOVE           v4 = p13
[055] :230:LOADK          v5 = "Create"
[058] :230:CALL           v1:FireServer(v3, v4, v5)
end
[059] :232:RETURN         return
end
v4 = Power5
[437] :220:SETGLOBAL      Power5 = v4
[438] :233:DUPCLOSURE     
local function Power6(p16, p17, p18)
-- proto pool id: 12
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 59
-- size constants: 18
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: true
[002] :234:GETIMPORT      v4 = script
[004] :234:GETTABLEKS     v3 = v4.Parent
[006] :234:GETTABLEKS     v2 = v3.Parent
[008] :234:GETTABLEKS     v1 = v2.DF_Disabled
[010] :234:GETTABLEKS     v0 = v1.Value
[012] :234:JUMPXEQKB      if v0 == true then -- goto #14
[013] :234:RETURN         return
end
[014] :237:GETUPVAL       v2 = u_v1
[016] :237:GETTABLEKS     v1 = v2.Data
[018] :237:GETIMPORT      v6 = script
[020] :237:GETTABLEKS     v5 = v6.Power6
[022] :237:GETTABLEKS     v4 = v5.StatType
[024] :237:GETTABLEKS     v3 = v4.Value
[027] :237:CALL           v1 = v1:FindFirstChild(v3)
[029] :237:GETTABLEKS     v0 = v1.Value
[031] :238:GETIMPORT      v2 = script
[032] :238:LOADK          v4 = "Power6"
[035] :238:CALL           v2 = v2:FindFirstChild(v4)
[037] :238:GETTABLEKS     v1 = v2.Value
[039] :238:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :238:RETURN         return
end
[042] :240:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :240:JUMPIFNOTEQ    if p17 ~= v1 then -- goto #59
[046] :241:GETGLOBAL      v1 = AbilityActivated
[047] :241:CALL           v1()
[049] :243:GETIMPORT      v2 = script
[051] :243:GETTABLEKS     v1 = v2.RemoteEvent
[053] :243:GETGLOBAL      v3 = VTCmel
[054] :243:MOVE           v4 = p16
[055] :243:LOADK          v5 = "Create"
[058] :243:CALL           v1:FireServer(v3, v4, v5)
end
[059] :245:RETURN         return
end
v4 = Power6
[441] :233:SETGLOBAL      Power6 = v4
[443] :247:GETIMPORT      v4 = wait
[444] :247:CALL           v4()
[446] :247:GETIMPORT      v6 = script
[448] :247:GETTABLEKS     v5 = v6.Parent
[450] :247:GETTABLEKS     v4 = v5.Parent
[451] :247:LOADK          v6 = "DamageScript"
[454] :247:CALL           v4 = v4:FindFirstChild(v6)
[455] :247:JUMPIF         if not v4 then -- goto #456
end
[456] :247:JUMPBACK       -- jump back to #442
[458] :248:GETIMPORT      v4 = wait
[459] :248:CALL           v4()
[461] :248:GETIMPORT      v8 = script
[463] :248:GETTABLEKS     v7 = v8.Parent
[465] :248:GETTABLEKS     v6 = v7.Parent
[467] :248:GETTABLEKS     v5 = v6.DamageScript
[469] :248:GETTABLEKS     v4 = v5.Disabled
[471] :248:JUMPXEQKB      if v4 ~= false then -- goto #473
[472] :248:JUMPBACK       -- jump back to #457
end
[473] :249:LOADNIL        v4 = nil
[475] :249:SETGLOBAL      Button1 = v4
[476] :250:LOADNIL        v4 = nil
[478] :250:SETGLOBAL      Button2 = v4
[479] :251:LOADNIL        v4 = nil
[481] :251:SETGLOBAL      Button3 = v4
[482] :252:LOADNIL        v4 = nil
[484] :252:SETGLOBAL      Button4 = v4
[485] :253:LOADNIL        v4 = nil
[487] :253:SETGLOBAL      Button5 = v4
[488] :254:LOADNIL        v4 = nil
[490] :254:SETGLOBAL      Button6 = v4
[491] :255:LOADNIL        v4 = nil
[493] :255:SETGLOBAL      Button7 = v4
[494] :256:LOADNIL        v4 = nil
[496] :256:SETGLOBAL      Button8 = v4
[497] :257:LOADNIL        v4 = nil
[499] :257:SETGLOBAL      Button9 = v4
[500] :258:LOADNIL        v4 = nil
[502] :258:SETGLOBAL      Button10 = v4
[503] :259:LOADNIL        v4 = nil
[505] :259:SETGLOBAL      Button11 = v4
[506] :260:LOADNIL        v4 = nil
[508] :260:SETGLOBAL      Button12 = v4
[509] :261:LOADNIL        v4 = nil
[511] :261:SETGLOBAL      SP = v4
[512] :262:DUPCLOSURE     
local function NewSP()
-- proto pool id: 13
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 183
-- size constants: 17
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :263:GETGLOBAL      v0 = Button1
[004] :263:JUMPXEQKNIL    if v0 ~= nil then -- goto #15
[006] :263:GETGLOBAL      v0 = Button1
[008] :263:GETIMPORT      v1 = Color3.fromRGB
[009] :263:LOADN          v2 = 255
[010] :263:LOADN          v3 = 255
[011] :263:LOADN          v4 = 255
[012] :263:CALL           v1 = v1(v2, v3, v4)
[014] :263:SETTABLEKS     v0.ImageColor3 = v1
end
[016] :264:GETGLOBAL      v0 = Button2
[018] :264:JUMPXEQKNIL    if v0 ~= nil then -- goto #29
[020] :264:GETGLOBAL      v0 = Button2
[022] :264:GETIMPORT      v1 = Color3.fromRGB
[023] :264:LOADN          v2 = 255
[024] :264:LOADN          v3 = 255
[025] :264:LOADN          v4 = 255
[026] :264:CALL           v1 = v1(v2, v3, v4)
[028] :264:SETTABLEKS     v0.ImageColor3 = v1
end
[030] :265:GETGLOBAL      v0 = Button3
[032] :265:JUMPXEQKNIL    if v0 ~= nil then -- goto #43
[034] :265:GETGLOBAL      v0 = Button3
[036] :265:GETIMPORT      v1 = Color3.fromRGB
[037] :265:LOADN          v2 = 255
[038] :265:LOADN          v3 = 255
[039] :265:LOADN          v4 = 255
[040] :265:CALL           v1 = v1(v2, v3, v4)
[042] :265:SETTABLEKS     v0.ImageColor3 = v1
end
[044] :266:GETGLOBAL      v0 = Button4
[046] :266:JUMPXEQKNIL    if v0 ~= nil then -- goto #57
[048] :266:GETGLOBAL      v0 = Button4
[050] :266:GETIMPORT      v1 = Color3.fromRGB
[051] :266:LOADN          v2 = 255
[052] :266:LOADN          v3 = 255
[053] :266:LOADN          v4 = 255
[054] :266:CALL           v1 = v1(v2, v3, v4)
[056] :266:SETTABLEKS     v0.ImageColor3 = v1
end
[058] :267:GETGLOBAL      v0 = Button5
[060] :267:JUMPXEQKNIL    if v0 ~= nil then -- goto #71
[062] :267:GETGLOBAL      v0 = Button5
[064] :267:GETIMPORT      v1 = Color3.fromRGB
[065] :267:LOADN          v2 = 255
[066] :267:LOADN          v3 = 255
[067] :267:LOADN          v4 = 255
[068] :267:CALL           v1 = v1(v2, v3, v4)
[070] :267:SETTABLEKS     v0.ImageColor3 = v1
end
[072] :268:GETGLOBAL      v0 = Button6
[074] :268:JUMPXEQKNIL    if v0 ~= nil then -- goto #85
[076] :268:GETGLOBAL      v0 = Button6
[078] :268:GETIMPORT      v1 = Color3.fromRGB
[079] :268:LOADN          v2 = 255
[080] :268:LOADN          v3 = 255
[081] :268:LOADN          v4 = 255
[082] :268:CALL           v1 = v1(v2, v3, v4)
[084] :268:SETTABLEKS     v0.ImageColor3 = v1
end
[086] :269:GETGLOBAL      v0 = Button7
[088] :269:JUMPXEQKNIL    if v0 ~= nil then -- goto #99
[090] :269:GETGLOBAL      v0 = Button7
[092] :269:GETIMPORT      v1 = Color3.fromRGB
[093] :269:LOADN          v2 = 255
[094] :269:LOADN          v3 = 255
[095] :269:LOADN          v4 = 255
[096] :269:CALL           v1 = v1(v2, v3, v4)
[098] :269:SETTABLEKS     v0.ImageColor3 = v1
end
[100] :270:GETGLOBAL      v0 = Button8
[102] :270:JUMPXEQKNIL    if v0 ~= nil then -- goto #113
[104] :270:GETGLOBAL      v0 = Button8
[106] :270:GETIMPORT      v1 = Color3.fromRGB
[107] :270:LOADN          v2 = 255
[108] :270:LOADN          v3 = 255
[109] :270:LOADN          v4 = 255
[110] :270:CALL           v1 = v1(v2, v3, v4)
[112] :270:SETTABLEKS     v0.ImageColor3 = v1
end
[114] :271:GETGLOBAL      v0 = Button9
[116] :271:JUMPXEQKNIL    if v0 ~= nil then -- goto #127
[118] :271:GETGLOBAL      v0 = Button9
[120] :271:GETIMPORT      v1 = Color3.fromRGB
[121] :271:LOADN          v2 = 255
[122] :271:LOADN          v3 = 255
[123] :271:LOADN          v4 = 255
[124] :271:CALL           v1 = v1(v2, v3, v4)
[126] :271:SETTABLEKS     v0.ImageColor3 = v1
end
[128] :272:GETGLOBAL      v0 = Button10
[130] :272:JUMPXEQKNIL    if v0 ~= nil then -- goto #141
[132] :272:GETGLOBAL      v0 = Button10
[134] :272:GETIMPORT      v1 = Color3.fromRGB
[135] :272:LOADN          v2 = 255
[136] :272:LOADN          v3 = 255
[137] :272:LOADN          v4 = 255
[138] :272:CALL           v1 = v1(v2, v3, v4)
[140] :272:SETTABLEKS     v0.ImageColor3 = v1
end
[142] :273:GETGLOBAL      v0 = Button11
[144] :273:JUMPXEQKNIL    if v0 ~= nil then -- goto #155
[146] :273:GETGLOBAL      v0 = Button11
[148] :273:GETIMPORT      v1 = Color3.fromRGB
[149] :273:LOADN          v2 = 255
[150] :273:LOADN          v3 = 255
[151] :273:LOADN          v4 = 255
[152] :273:CALL           v1 = v1(v2, v3, v4)
[154] :273:SETTABLEKS     v0.ImageColor3 = v1
end
[156] :274:GETGLOBAL      v0 = Button12
[158] :274:JUMPXEQKNIL    if v0 ~= nil then -- goto #169
[160] :274:GETGLOBAL      v0 = Button12
[162] :274:GETIMPORT      v1 = Color3.fromRGB
[163] :274:LOADN          v2 = 255
[164] :274:LOADN          v3 = 255
[165] :274:LOADN          v4 = 255
[166] :274:CALL           v1 = v1(v2, v3, v4)
[168] :274:SETTABLEKS     v0.ImageColor3 = v1
end
[170] :275:GETGLOBAL      v0 = SP
[172] :275:JUMPXEQKNIL    if v0 ~= nil then -- goto #183
[174] :276:GETGLOBAL      v0 = SP
[176] :276:GETIMPORT      v1 = Color3.fromRGB
[177] :276:LOADN          v2 = 127
[178] :276:LOADN          v3 = 255
[179] :276:LOADN          v4 = 127
[180] :276:CALL           v1 = v1(v2, v3, v4)
[182] :276:SETTABLEKS     v0.ImageColor3 = v1
end
[183] :278:RETURN         return
end
v4 = NewSP
[514] :518:SETGLOBAL      NewSP = v4
[516] :535:GETIMPORT      v5 = game
[517] :535:LOADK          v7 = "UserInputService"
[520] :535:CALL           v5 = v5:GetService(v7)
[522] :535:GETTABLEKS     v4 = v5.TouchStarted
[523] :535:DUPCLOSURE     v6 = function(p19, p20)
-- proto pool id: 14
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :280:JUMPXEQKB      if p20 == false then -- goto #223
[004] :280:GETGLOBAL      v0 = SP
[006] :280:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :281:GETGLOBAL      v0 = SP
[010] :281:GETGLOBAL      v1 = Button1
[012] :281:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :281:GETGLOBAL      v0 = Power1
[016] :281:GETIMPORT      v4 = script
[018] :281:GETTABLEKS     v2 = v4.Name
[019] :281:LOADK          v3 = "Power1"
[020] :281:CONCAT         v1 = v2 .. v3
[022] :281:GETIMPORT      v2 = Enum.UserInputState.Begin
[023] :281:LOADNIL        v3 = nil
[024] :281:CALL           v0(v1, v2, v3)
end
[026] :282:GETGLOBAL      v0 = SP
[028] :282:GETGLOBAL      v1 = Button2
[030] :282:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :282:GETGLOBAL      v0 = Power2
[034] :282:GETIMPORT      v4 = script
[036] :282:GETTABLEKS     v2 = v4.Name
[037] :282:LOADK          v3 = "Power2"
[038] :282:CONCAT         v1 = v2 .. v3
[040] :282:GETIMPORT      v2 = Enum.UserInputState.Begin
[041] :282:LOADNIL        v3 = nil
[042] :282:CALL           v0(v1, v2, v3)
end
[044] :283:GETGLOBAL      v0 = SP
[046] :283:GETGLOBAL      v1 = Button3
[048] :283:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :283:GETGLOBAL      v0 = Power3
[052] :283:GETIMPORT      v4 = script
[054] :283:GETTABLEKS     v2 = v4.Name
[055] :283:LOADK          v3 = "Power3"
[056] :283:CONCAT         v1 = v2 .. v3
[058] :283:GETIMPORT      v2 = Enum.UserInputState.Begin
[059] :283:LOADNIL        v3 = nil
[060] :283:CALL           v0(v1, v2, v3)
end
[062] :284:GETGLOBAL      v0 = SP
[064] :284:GETGLOBAL      v1 = Button4
[066] :284:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :284:GETGLOBAL      v0 = Power4
[070] :284:GETIMPORT      v4 = script
[072] :284:GETTABLEKS     v2 = v4.Name
[073] :284:LOADK          v3 = "Power4"
[074] :284:CONCAT         v1 = v2 .. v3
[076] :284:GETIMPORT      v2 = Enum.UserInputState.Begin
[077] :284:LOADNIL        v3 = nil
[078] :284:CALL           v0(v1, v2, v3)
end
[080] :285:GETGLOBAL      v0 = SP
[082] :285:GETGLOBAL      v1 = Button5
[084] :285:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :285:GETGLOBAL      v0 = Power5
[088] :285:GETIMPORT      v4 = script
[090] :285:GETTABLEKS     v2 = v4.Name
[091] :285:LOADK          v3 = "Power5"
[092] :285:CONCAT         v1 = v2 .. v3
[094] :285:GETIMPORT      v2 = Enum.UserInputState.Begin
[095] :285:LOADNIL        v3 = nil
[096] :285:CALL           v0(v1, v2, v3)
end
[098] :286:GETGLOBAL      v0 = SP
[100] :286:GETGLOBAL      v1 = Button6
[102] :286:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :286:GETGLOBAL      v0 = Power6
[106] :286:GETIMPORT      v4 = script
[108] :286:GETTABLEKS     v2 = v4.Name
[109] :286:LOADK          v3 = "Power6"
[110] :286:CONCAT         v1 = v2 .. v3
[112] :286:GETIMPORT      v2 = Enum.UserInputState.Begin
[113] :286:LOADNIL        v3 = nil
[114] :286:CALL           v0(v1, v2, v3)
end
[116] :287:GETGLOBAL      v0 = SP
[118] :287:GETGLOBAL      v1 = Button7
[120] :287:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :287:GETGLOBAL      v0 = Power1
[124] :287:GETIMPORT      v4 = script
[126] :287:GETTABLEKS     v2 = v4.Name
[127] :287:LOADK          v3 = "Power7"
[128] :287:CONCAT         v1 = v2 .. v3
[130] :287:GETIMPORT      v2 = Enum.UserInputState.Begin
[131] :287:LOADNIL        v3 = nil
[132] :287:CALL           v0(v1, v2, v3)
end
[134] :288:GETGLOBAL      v0 = SP
[136] :288:GETGLOBAL      v1 = Button8
[138] :288:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :288:GETGLOBAL      v0 = Power2
[142] :288:GETIMPORT      v4 = script
[144] :288:GETTABLEKS     v2 = v4.Name
[145] :288:LOADK          v3 = "Power8"
[146] :288:CONCAT         v1 = v2 .. v3
[148] :288:GETIMPORT      v2 = Enum.UserInputState.Begin
[149] :288:LOADNIL        v3 = nil
[150] :288:CALL           v0(v1, v2, v3)
end
[152] :289:GETGLOBAL      v0 = SP
[154] :289:GETGLOBAL      v1 = Button9
[156] :289:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :289:GETGLOBAL      v0 = Power3
[160] :289:GETIMPORT      v4 = script
[162] :289:GETTABLEKS     v2 = v4.Name
[163] :289:LOADK          v3 = "Power9"
[164] :289:CONCAT         v1 = v2 .. v3
[166] :289:GETIMPORT      v2 = Enum.UserInputState.Begin
[167] :289:LOADNIL        v3 = nil
[168] :289:CALL           v0(v1, v2, v3)
end
[170] :290:GETGLOBAL      v0 = SP
[172] :290:GETGLOBAL      v1 = Button10
[174] :290:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :290:GETGLOBAL      v0 = Power4
[178] :290:GETIMPORT      v4 = script
[180] :290:GETTABLEKS     v2 = v4.Name
[181] :290:LOADK          v3 = "Power10"
[182] :290:CONCAT         v1 = v2 .. v3
[184] :290:GETIMPORT      v2 = Enum.UserInputState.Begin
[185] :290:LOADNIL        v3 = nil
[186] :290:CALL           v0(v1, v2, v3)
end
[188] :291:GETGLOBAL      v0 = SP
[190] :291:GETGLOBAL      v1 = Button11
[192] :291:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :291:GETGLOBAL      v0 = Power5
[196] :291:GETIMPORT      v4 = script
[198] :291:GETTABLEKS     v2 = v4.Name
[199] :291:LOADK          v3 = "Power11"
[200] :291:CONCAT         v1 = v2 .. v3
[202] :291:GETIMPORT      v2 = Enum.UserInputState.Begin
[203] :291:LOADNIL        v3 = nil
[204] :291:CALL           v0(v1, v2, v3)
end
[206] :292:GETGLOBAL      v0 = SP
[208] :292:GETGLOBAL      v1 = Button12
[210] :292:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :292:GETGLOBAL      v0 = Power6
[214] :292:GETIMPORT      v4 = script
[216] :292:GETTABLEKS     v2 = v4.Name
[217] :292:LOADK          v3 = "Power12"
[218] :292:CONCAT         v1 = v2 .. v3
[220] :292:GETIMPORT      v2 = Enum.UserInputState.Begin
[221] :292:LOADNIL        v3 = nil
[222] :292:CALL           v0(v1, v2, v3)
end
end
end
[223] :294:RETURN         return
end
[526] :535:CALL           v4:Connect(v6)
[528] :551:GETIMPORT      v5 = game
[529] :551:LOADK          v7 = "UserInputService"
[532] :551:CALL           v5 = v5:GetService(v7)
[534] :551:GETTABLEKS     v4 = v5.TouchEnded
[535] :551:DUPCLOSURE     v6 = function(p21, p22)
-- proto pool id: 15
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :296:JUMPXEQKB      if p22 == false then -- goto #223
[004] :296:GETGLOBAL      v0 = SP
[006] :296:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :297:GETGLOBAL      v0 = SP
[010] :297:GETGLOBAL      v1 = Button1
[012] :297:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :297:GETGLOBAL      v0 = Power1
[016] :297:GETIMPORT      v4 = script
[018] :297:GETTABLEKS     v2 = v4.Name
[019] :297:LOADK          v3 = "Power1"
[020] :297:CONCAT         v1 = v2 .. v3
[022] :297:GETIMPORT      v2 = Enum.UserInputState.End
[023] :297:LOADNIL        v3 = nil
[024] :297:CALL           v0(v1, v2, v3)
end
[026] :298:GETGLOBAL      v0 = SP
[028] :298:GETGLOBAL      v1 = Button2
[030] :298:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :298:GETGLOBAL      v0 = Power2
[034] :298:GETIMPORT      v4 = script
[036] :298:GETTABLEKS     v2 = v4.Name
[037] :298:LOADK          v3 = "Power2"
[038] :298:CONCAT         v1 = v2 .. v3
[040] :298:GETIMPORT      v2 = Enum.UserInputState.End
[041] :298:LOADNIL        v3 = nil
[042] :298:CALL           v0(v1, v2, v3)
end
[044] :299:GETGLOBAL      v0 = SP
[046] :299:GETGLOBAL      v1 = Button3
[048] :299:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :299:GETGLOBAL      v0 = Power3
[052] :299:GETIMPORT      v4 = script
[054] :299:GETTABLEKS     v2 = v4.Name
[055] :299:LOADK          v3 = "Power3"
[056] :299:CONCAT         v1 = v2 .. v3
[058] :299:GETIMPORT      v2 = Enum.UserInputState.End
[059] :299:LOADNIL        v3 = nil
[060] :299:CALL           v0(v1, v2, v3)
end
[062] :300:GETGLOBAL      v0 = SP
[064] :300:GETGLOBAL      v1 = Button4
[066] :300:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :300:GETGLOBAL      v0 = Power4
[070] :300:GETIMPORT      v4 = script
[072] :300:GETTABLEKS     v2 = v4.Name
[073] :300:LOADK          v3 = "Power4"
[074] :300:CONCAT         v1 = v2 .. v3
[076] :300:GETIMPORT      v2 = Enum.UserInputState.End
[077] :300:LOADNIL        v3 = nil
[078] :300:CALL           v0(v1, v2, v3)
end
[080] :301:GETGLOBAL      v0 = SP
[082] :301:GETGLOBAL      v1 = Button5
[084] :301:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :301:GETGLOBAL      v0 = Power5
[088] :301:GETIMPORT      v4 = script
[090] :301:GETTABLEKS     v2 = v4.Name
[091] :301:LOADK          v3 = "Power5"
[092] :301:CONCAT         v1 = v2 .. v3
[094] :301:GETIMPORT      v2 = Enum.UserInputState.End
[095] :301:LOADNIL        v3 = nil
[096] :301:CALL           v0(v1, v2, v3)
end
[098] :302:GETGLOBAL      v0 = SP
[100] :302:GETGLOBAL      v1 = Button6
[102] :302:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :302:GETGLOBAL      v0 = Power6
[106] :302:GETIMPORT      v4 = script
[108] :302:GETTABLEKS     v2 = v4.Name
[109] :302:LOADK          v3 = "Power6"
[110] :302:CONCAT         v1 = v2 .. v3
[112] :302:GETIMPORT      v2 = Enum.UserInputState.End
[113] :302:LOADNIL        v3 = nil
[114] :302:CALL           v0(v1, v2, v3)
end
[116] :303:GETGLOBAL      v0 = SP
[118] :303:GETGLOBAL      v1 = Button7
[120] :303:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :303:GETGLOBAL      v0 = Power1
[124] :303:GETIMPORT      v4 = script
[126] :303:GETTABLEKS     v2 = v4.Name
[127] :303:LOADK          v3 = "Power7"
[128] :303:CONCAT         v1 = v2 .. v3
[130] :303:GETIMPORT      v2 = Enum.UserInputState.End
[131] :303:LOADNIL        v3 = nil
[132] :303:CALL           v0(v1, v2, v3)
end
[134] :304:GETGLOBAL      v0 = SP
[136] :304:GETGLOBAL      v1 = Button8
[138] :304:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :304:GETGLOBAL      v0 = Power2
[142] :304:GETIMPORT      v4 = script
[144] :304:GETTABLEKS     v2 = v4.Name
[145] :304:LOADK          v3 = "Power8"
[146] :304:CONCAT         v1 = v2 .. v3
[148] :304:GETIMPORT      v2 = Enum.UserInputState.End
[149] :304:LOADNIL        v3 = nil
[150] :304:CALL           v0(v1, v2, v3)
end
[152] :305:GETGLOBAL      v0 = SP
[154] :305:GETGLOBAL      v1 = Button9
[156] :305:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :305:GETGLOBAL      v0 = Power3
[160] :305:GETIMPORT      v4 = script
[162] :305:GETTABLEKS     v2 = v4.Name
[163] :305:LOADK          v3 = "Power9"
[164] :305:CONCAT         v1 = v2 .. v3
[166] :305:GETIMPORT      v2 = Enum.UserInputState.End
[167] :305:LOADNIL        v3 = nil
[168] :305:CALL           v0(v1, v2, v3)
end
[170] :306:GETGLOBAL      v0 = SP
[172] :306:GETGLOBAL      v1 = Button10
[174] :306:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :306:GETGLOBAL      v0 = Power4
[178] :306:GETIMPORT      v4 = script
[180] :306:GETTABLEKS     v2 = v4.Name
[181] :306:LOADK          v3 = "Power10"
[182] :306:CONCAT         v1 = v2 .. v3
[184] :306:GETIMPORT      v2 = Enum.UserInputState.End
[185] :306:LOADNIL        v3 = nil
[186] :306:CALL           v0(v1, v2, v3)
end
[188] :307:GETGLOBAL      v0 = SP
[190] :307:GETGLOBAL      v1 = Button11
[192] :307:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :307:GETGLOBAL      v0 = Power5
[196] :307:GETIMPORT      v4 = script
[198] :307:GETTABLEKS     v2 = v4.Name
[199] :307:LOADK          v3 = "Power11"
[200] :307:CONCAT         v1 = v2 .. v3
[202] :307:GETIMPORT      v2 = Enum.UserInputState.End
[203] :307:LOADNIL        v3 = nil
[204] :307:CALL           v0(v1, v2, v3)
end
[206] :308:GETGLOBAL      v0 = SP
[208] :308:GETGLOBAL      v1 = Button12
[210] :308:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :308:GETGLOBAL      v0 = Power6
[214] :308:GETIMPORT      v4 = script
[216] :308:GETTABLEKS     v2 = v4.Name
[217] :308:LOADK          v3 = "Power12"
[218] :308:CONCAT         v1 = v2 .. v3
[220] :308:GETIMPORT      v2 = Enum.UserInputState.End
[221] :308:LOADNIL        v3 = nil
[222] :308:CALL           v0(v1, v2, v3)
end
end
end
[223] :310:RETURN         return
end
[538] :551:CALL           v4:Connect(v6)
[539] :567:DUPCLOSURE     
local function Update(p23, p24)
-- proto pool id: 28
-- num upvalues: 2
-- num inner protos: 12
-- size instructions: 1130
-- size constants: 83
-- lineinfo gap: 24
-- max stack size: 15
-- is typed: true
[001] :312:GETUPVAL       v1 = u_v1
[003] :312:GETTABLEKS     v0 = v1.Data
[004] :312:LOADK          v2 = "DevilFruit"
[007] :312:CALL           v0 = v0:FindFirstChild(v2)
[008] :313:GETUPVAL       v2 = u_v1
[010] :313:GETTABLEKS     v1 = v2.Data
[011] :313:LOADK          v3 = "DevilFruit2"
[014] :313:CALL           v1 = v1:FindFirstChild(v3)
[016] :314:JUMPXEQKN      if p23 == 1 then -- goto #573
[018] :315:GETIMPORT      v2 = game
[019] :315:LOADK          v4 = "ContextActionService"
[022] :315:CALL           v2 = v2:GetService(v4)
[024] :315:GETIMPORT      v7 = script
[026] :315:GETTABLEKS     v5 = v7.Name
[027] :315:LOADK          v6 = "Power1"
[028] :315:CONCAT         v4 = v5 .. v6
[031] :315:CALL           v2:UnbindAction(v4)
[033] :316:GETIMPORT      v2 = game
[034] :316:LOADK          v4 = "ContextActionService"
[037] :316:CALL           v2 = v2:GetService(v4)
[039] :316:GETIMPORT      v7 = script
[041] :316:GETTABLEKS     v5 = v7.Name
[042] :316:LOADK          v6 = "Power2"
[043] :316:CONCAT         v4 = v5 .. v6
[046] :316:CALL           v2:UnbindAction(v4)
[048] :317:GETIMPORT      v2 = game
[049] :317:LOADK          v4 = "ContextActionService"
[052] :317:CALL           v2 = v2:GetService(v4)
[054] :317:GETIMPORT      v7 = script
[056] :317:GETTABLEKS     v5 = v7.Name
[057] :317:LOADK          v6 = "Power3"
[058] :317:CONCAT         v4 = v5 .. v6
[061] :317:CALL           v2:UnbindAction(v4)
[063] :318:GETIMPORT      v2 = game
[064] :318:LOADK          v4 = "ContextActionService"
[067] :318:CALL           v2 = v2:GetService(v4)
[069] :318:GETIMPORT      v7 = script
[071] :318:GETTABLEKS     v5 = v7.Name
[072] :318:LOADK          v6 = "Power4"
[073] :318:CONCAT         v4 = v5 .. v6
[076] :318:CALL           v2:UnbindAction(v4)
[078] :319:GETIMPORT      v2 = game
[079] :319:LOADK          v4 = "ContextActionService"
[082] :319:CALL           v2 = v2:GetService(v4)
[084] :319:GETIMPORT      v7 = script
[086] :319:GETTABLEKS     v5 = v7.Name
[087] :319:LOADK          v6 = "Power5"
[088] :319:CONCAT         v4 = v5 .. v6
[091] :319:CALL           v2:UnbindAction(v4)
[093] :320:GETIMPORT      v2 = game
[094] :320:LOADK          v4 = "ContextActionService"
[097] :320:CALL           v2 = v2:GetService(v4)
[099] :320:GETIMPORT      v7 = script
[101] :320:GETTABLEKS     v5 = v7.Name
[102] :320:LOADK          v6 = "Power6"
[103] :320:CONCAT         v4 = v5 .. v6
[106] :320:CALL           v2:UnbindAction(v4)
[108] :321:GETGLOBAL      v2 = Button1
[110] :321:JUMPXEQKNIL    if v2 ~= nil then -- goto #116
[112] :321:GETGLOBAL      v2 = Button1
[115] :321:CALL           v2:Destroy()
end
[117] :322:GETGLOBAL      v2 = Button2
[119] :322:JUMPXEQKNIL    if v2 ~= nil then -- goto #125
[121] :322:GETGLOBAL      v2 = Button2
[124] :322:CALL           v2:Destroy()
end
[126] :323:GETGLOBAL      v2 = Button3
[128] :323:JUMPXEQKNIL    if v2 ~= nil then -- goto #134
[130] :323:GETGLOBAL      v2 = Button3
[133] :323:CALL           v2:Destroy()
end
[135] :324:GETGLOBAL      v2 = Button4
[137] :324:JUMPXEQKNIL    if v2 ~= nil then -- goto #143
[139] :324:GETGLOBAL      v2 = Button4
[142] :324:CALL           v2:Destroy()
end
[144] :325:GETGLOBAL      v2 = Button5
[146] :325:JUMPXEQKNIL    if v2 ~= nil then -- goto #152
[148] :325:GETGLOBAL      v2 = Button5
[151] :325:CALL           v2:Destroy()
end
[153] :326:GETGLOBAL      v2 = Button6
[155] :326:JUMPXEQKNIL    if v2 ~= nil then -- goto #161
[157] :326:GETGLOBAL      v2 = Button6
[160] :326:CALL           v2:Destroy()
end
[162] :327:GETIMPORT      v3 = script
[164] :327:GETTABLEKS     v2 = v3.Name
[166] :327:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1130
[168] :328:GETIMPORT      v2 = print
[169] :328:GETUPVAL       v9 = u_v0
[171] :328:GETTABLEKS     v4 = v9.Name
[172] :328:LOADK          v5 = " - Devil Fruit "
[173] :328:MOVE           v6 = p23
[174] :328:LOADK          v7 = " = "
[175] :328:MOVE           v8 = p24
[176] :328:CONCAT         v3 = v4 .. v5 .. v6 .. v7 .. v8
[177] :328:CALL           v2(v3)
[179] :329:GETIMPORT      v2 = game
[180] :329:LOADK          v4 = "ContextActionService"
[183] :329:CALL           v2 = v2:GetService(v4)
[185] :329:GETIMPORT      v7 = script
[187] :329:GETTABLEKS     v5 = v7.Name
[188] :329:LOADK          v6 = "Power1"
[189] :329:CONCAT         v4 = v5 .. v6
[191] :329:GETGLOBAL      v5 = Power1
[192] :329:LOADB          v6 = false
[194] :329:GETIMPORT      v8 = Enum.KeyCode
[195] :329:GETUPVAL       v12 = u_v1
[197] :329:GETTABLEKS     v11 = v12.Data
[199] :329:GETTABLEKS     v10 = v11.Basic_DF1A
[201] :329:GETTABLEKS     v9 = v10.Value
[202] :329:GETTABLE       v7 = v8[v9]
[205] :329:CALL           v2:BindAction(v4, v5, v6, v7)
[207] :330:GETIMPORT      v2 = game
[208] :330:LOADK          v4 = "ContextActionService"
[211] :330:CALL           v2 = v2:GetService(v4)
[213] :330:GETIMPORT      v7 = script
[215] :330:GETTABLEKS     v5 = v7.Name
[216] :330:LOADK          v6 = "Power2"
[217] :330:CONCAT         v4 = v5 .. v6
[219] :330:GETGLOBAL      v5 = Power2
[220] :330:LOADB          v6 = false
[222] :330:GETIMPORT      v8 = Enum.KeyCode
[223] :330:GETUPVAL       v12 = u_v1
[225] :330:GETTABLEKS     v11 = v12.Data
[227] :330:GETTABLEKS     v10 = v11.Basic_DF1B
[229] :330:GETTABLEKS     v9 = v10.Value
[230] :330:GETTABLE       v7 = v8[v9]
[233] :330:CALL           v2:BindAction(v4, v5, v6, v7)
[235] :331:GETIMPORT      v2 = game
[236] :331:LOADK          v4 = "ContextActionService"
[239] :331:CALL           v2 = v2:GetService(v4)
[241] :331:GETIMPORT      v7 = script
[243] :331:GETTABLEKS     v5 = v7.Name
[244] :331:LOADK          v6 = "Power3"
[245] :331:CONCAT         v4 = v5 .. v6
[247] :331:GETGLOBAL      v5 = Power3
[248] :331:LOADB          v6 = false
[250] :331:GETIMPORT      v8 = Enum.KeyCode
[251] :331:GETUPVAL       v12 = u_v1
[253] :331:GETTABLEKS     v11 = v12.Data
[255] :331:GETTABLEKS     v10 = v11.Basic_DF1C
[257] :331:GETTABLEKS     v9 = v10.Value
[258] :331:GETTABLE       v7 = v8[v9]
[261] :331:CALL           v2:BindAction(v4, v5, v6, v7)
[263] :332:GETIMPORT      v2 = game
[264] :332:LOADK          v4 = "ContextActionService"
[267] :332:CALL           v2 = v2:GetService(v4)
[269] :332:GETIMPORT      v7 = script
[271] :332:GETTABLEKS     v5 = v7.Name
[272] :332:LOADK          v6 = "Power4"
[273] :332:CONCAT         v4 = v5 .. v6
[275] :332:GETGLOBAL      v5 = Power4
[276] :332:LOADB          v6 = false
[278] :332:GETIMPORT      v8 = Enum.KeyCode
[279] :332:GETUPVAL       v12 = u_v1
[281] :332:GETTABLEKS     v11 = v12.Data
[283] :332:GETTABLEKS     v10 = v11.Basic_DF1D
[285] :332:GETTABLEKS     v9 = v10.Value
[286] :332:GETTABLE       v7 = v8[v9]
[289] :332:CALL           v2:BindAction(v4, v5, v6, v7)
[291] :333:GETIMPORT      v2 = game
[292] :333:LOADK          v4 = "ContextActionService"
[295] :333:CALL           v2 = v2:GetService(v4)
[297] :333:GETIMPORT      v7 = script
[299] :333:GETTABLEKS     v5 = v7.Name
[300] :333:LOADK          v6 = "Power5"
[301] :333:CONCAT         v4 = v5 .. v6
[303] :333:GETGLOBAL      v5 = Power5
[304] :333:LOADB          v6 = false
[306] :333:GETIMPORT      v8 = Enum.KeyCode
[307] :333:GETUPVAL       v12 = u_v1
[309] :333:GETTABLEKS     v11 = v12.Data
[311] :333:GETTABLEKS     v10 = v11.Basic_DF1E
[313] :333:GETTABLEKS     v9 = v10.Value
[314] :333:GETTABLE       v7 = v8[v9]
[317] :333:CALL           v2:BindAction(v4, v5, v6, v7)
[319] :334:GETIMPORT      v2 = game
[320] :334:LOADK          v4 = "ContextActionService"
[323] :334:CALL           v2 = v2:GetService(v4)
[325] :334:GETIMPORT      v7 = script
[327] :334:GETTABLEKS     v5 = v7.Name
[328] :334:LOADK          v6 = "Power6"
[329] :334:CONCAT         v4 = v5 .. v6
[331] :334:GETGLOBAL      v5 = Power6
[332] :334:LOADB          v6 = false
[334] :334:GETIMPORT      v8 = Enum.KeyCode
[335] :334:GETUPVAL       v12 = u_v1
[337] :334:GETTABLEKS     v11 = v12.Data
[339] :334:GETTABLEKS     v10 = v11.Basic_DF1F
[341] :334:GETTABLEKS     v9 = v10.Value
[342] :334:GETTABLE       v7 = v8[v9]
[345] :334:CALL           v2:BindAction(v4, v5, v6, v7)
[347] :335:GETIMPORT      v3 = game
[348] :335:LOADK          v5 = "UserInputService"
[351] :335:CALL           v3 = v3:GetService(v5)
[353] :335:GETTABLEKS     v2 = v3.TouchEnabled
[355] :335:JUMPXEQKB      if v2 == true then -- goto #1130
[356] :336:GETUPVAL       v5 = u_v0
[358] :336:GETTABLEKS     v4 = v5.PlayerGui
[360] :336:GETTABLEKS     v3 = v4.MobileContext
[362] :336:GETTABLEKS     v2 = v3.Button
[365] :336:CALL           v2 = v2:Clone()
[367] :336:SETGLOBAL      Button1 = v2
[368] :337:GETUPVAL       v5 = u_v0
[370] :337:GETTABLEKS     v4 = v5.PlayerGui
[372] :337:GETTABLEKS     v3 = v4.MobileContext
[374] :337:GETTABLEKS     v2 = v3.Button
[377] :337:CALL           v2 = v2:Clone()
[379] :337:SETGLOBAL      Button2 = v2
[380] :338:GETUPVAL       v5 = u_v0
[382] :338:GETTABLEKS     v4 = v5.PlayerGui
[384] :338:GETTABLEKS     v3 = v4.MobileContext
[386] :338:GETTABLEKS     v2 = v3.Button
[389] :338:CALL           v2 = v2:Clone()
[391] :338:SETGLOBAL      Button3 = v2
[392] :339:GETUPVAL       v5 = u_v0
[394] :339:GETTABLEKS     v4 = v5.PlayerGui
[396] :339:GETTABLEKS     v3 = v4.MobileContext
[398] :339:GETTABLEKS     v2 = v3.Button
[401] :339:CALL           v2 = v2:Clone()
[403] :339:SETGLOBAL      Button4 = v2
[404] :340:GETUPVAL       v5 = u_v0
[406] :340:GETTABLEKS     v4 = v5.PlayerGui
[408] :340:GETTABLEKS     v3 = v4.MobileContext
[410] :340:GETTABLEKS     v2 = v3.Button
[413] :340:CALL           v2 = v2:Clone()
[415] :340:SETGLOBAL      Button5 = v2
[416] :341:GETUPVAL       v5 = u_v0
[418] :341:GETTABLEKS     v4 = v5.PlayerGui
[420] :341:GETTABLEKS     v3 = v4.MobileContext
[422] :341:GETTABLEKS     v2 = v3.Button
[425] :341:CALL           v2 = v2:Clone()
[427] :341:SETGLOBAL      Button6 = v2
[429] :342:GETGLOBAL      v2 = Button1
[430] :342:LOADK          v3 = "Power1"
[432] :342:SETTABLEKS     v2.Name = v3
[434] :343:GETGLOBAL      v2 = Button2
[435] :343:LOADK          v3 = "Power2"
[437] :343:SETTABLEKS     v2.Name = v3
[439] :344:GETGLOBAL      v2 = Button3
[440] :344:LOADK          v3 = "Power3"
[442] :344:SETTABLEKS     v2.Name = v3
[444] :345:GETGLOBAL      v2 = Button4
[445] :345:LOADK          v3 = "Power4"
[447] :345:SETTABLEKS     v2.Name = v3
[449] :346:GETGLOBAL      v2 = Button5
[450] :346:LOADK          v3 = "Power5"
[452] :346:SETTABLEKS     v2.Name = v3
[454] :347:GETGLOBAL      v2 = Button6
[455] :347:LOADK          v3 = "Power6"
[457] :347:SETTABLEKS     v2.Name = v3
[459] :348:GETGLOBAL      v2 = Button1
[460] :348:GETUPVAL       v6 = u_v0
[462] :348:GETTABLEKS     v5 = v6.PlayerGui
[464] :348:GETTABLEKS     v4 = v5.MobileContext
[466] :348:GETTABLEKS     v3 = v4.ContextActions1
[468] :348:SETTABLEKS     v2.Parent = v3
[470] :349:GETGLOBAL      v2 = Button2
[471] :349:GETUPVAL       v6 = u_v0
[473] :349:GETTABLEKS     v5 = v6.PlayerGui
[475] :349:GETTABLEKS     v4 = v5.MobileContext
[477] :349:GETTABLEKS     v3 = v4.ContextActions1
[479] :349:SETTABLEKS     v2.Parent = v3
[481] :350:GETGLOBAL      v2 = Button3
[482] :350:GETUPVAL       v6 = u_v0
[484] :350:GETTABLEKS     v5 = v6.PlayerGui
[486] :350:GETTABLEKS     v4 = v5.MobileContext
[488] :350:GETTABLEKS     v3 = v4.ContextActions1
[490] :350:SETTABLEKS     v2.Parent = v3
[492] :351:GETGLOBAL      v2 = Button4
[493] :351:GETUPVAL       v6 = u_v0
[495] :351:GETTABLEKS     v5 = v6.PlayerGui
[497] :351:GETTABLEKS     v4 = v5.MobileContext
[499] :351:GETTABLEKS     v3 = v4.ContextActions1
[501] :351:SETTABLEKS     v2.Parent = v3
[503] :352:GETGLOBAL      v2 = Button5
[504] :352:GETUPVAL       v6 = u_v0
[506] :352:GETTABLEKS     v5 = v6.PlayerGui
[508] :352:GETTABLEKS     v4 = v5.MobileContext
[510] :352:GETTABLEKS     v3 = v4.ContextActions1
[512] :352:SETTABLEKS     v2.Parent = v3
[514] :353:GETGLOBAL      v2 = Button6
[515] :353:GETUPVAL       v6 = u_v0
[517] :353:GETTABLEKS     v5 = v6.PlayerGui
[519] :353:GETTABLEKS     v4 = v5.MobileContext
[521] :353:GETTABLEKS     v3 = v4.ContextActions1
[523] :353:SETTABLEKS     v2.Parent = v3
[525] :354:GETGLOBAL      v3 = Button1
[527] :354:GETTABLEKS     v2 = v3.MouseButton1Click
[528] :354:DUPCLOSURE     v4 = function()
-- proto pool id: 16
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :354:GETGLOBAL      v0 = SP
[004] :354:GETGLOBAL      v1 = Button1
[006] :354:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :354:LOADNIL        v0 = nil
[009] :354:SETGLOBAL      SP = v0
[010] :354:JUMP           -- jump to #14
end
[012] :354:GETGLOBAL      v0 = Button1
[014] :354:SETGLOBAL      SP = v0
[016] :354:GETGLOBAL      v0 = NewSP
[017] :354:CALL           v0()
[018] :354:RETURN         return
end
[531] :354:CALL           v2:Connect(v4)
[533] :355:GETGLOBAL      v3 = Button2
[535] :355:GETTABLEKS     v2 = v3.MouseButton1Click
[536] :355:DUPCLOSURE     v4 = function()
-- proto pool id: 17
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :355:GETGLOBAL      v0 = SP
[004] :355:GETGLOBAL      v1 = Button2
[006] :355:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :355:LOADNIL        v0 = nil
[009] :355:SETGLOBAL      SP = v0
[010] :355:JUMP           -- jump to #14
end
[012] :355:GETGLOBAL      v0 = Button2
[014] :355:SETGLOBAL      SP = v0
[016] :355:GETGLOBAL      v0 = NewSP
[017] :355:CALL           v0()
[018] :355:RETURN         return
end
[539] :355:CALL           v2:Connect(v4)
[541] :356:GETGLOBAL      v3 = Button3
[543] :356:GETTABLEKS     v2 = v3.MouseButton1Click
[544] :356:DUPCLOSURE     v4 = function()
-- proto pool id: 18
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :356:GETGLOBAL      v0 = SP
[004] :356:GETGLOBAL      v1 = Button3
[006] :356:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :356:LOADNIL        v0 = nil
[009] :356:SETGLOBAL      SP = v0
[010] :356:JUMP           -- jump to #14
end
[012] :356:GETGLOBAL      v0 = Button3
[014] :356:SETGLOBAL      SP = v0
[016] :356:GETGLOBAL      v0 = NewSP
[017] :356:CALL           v0()
[018] :356:RETURN         return
end
[547] :356:CALL           v2:Connect(v4)
[549] :357:GETGLOBAL      v3 = Button4
[551] :357:GETTABLEKS     v2 = v3.MouseButton1Click
[552] :357:DUPCLOSURE     v4 = function()
-- proto pool id: 19
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :357:GETGLOBAL      v0 = SP
[004] :357:GETGLOBAL      v1 = Button4
[006] :357:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :357:LOADNIL        v0 = nil
[009] :357:SETGLOBAL      SP = v0
[010] :357:JUMP           -- jump to #14
end
[012] :357:GETGLOBAL      v0 = Button4
[014] :357:SETGLOBAL      SP = v0
[016] :357:GETGLOBAL      v0 = NewSP
[017] :357:CALL           v0()
[018] :357:RETURN         return
end
[555] :357:CALL           v2:Connect(v4)
[557] :358:GETGLOBAL      v3 = Button5
[559] :358:GETTABLEKS     v2 = v3.MouseButton1Click
[560] :358:DUPCLOSURE     v4 = function()
-- proto pool id: 20
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :358:GETGLOBAL      v0 = SP
[004] :358:GETGLOBAL      v1 = Button5
[006] :358:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :358:LOADNIL        v0 = nil
[009] :358:SETGLOBAL      SP = v0
[010] :358:JUMP           -- jump to #14
end
[012] :358:GETGLOBAL      v0 = Button5
[014] :358:SETGLOBAL      SP = v0
[016] :358:GETGLOBAL      v0 = NewSP
[017] :358:CALL           v0()
[018] :358:RETURN         return
end
[563] :358:CALL           v2:Connect(v4)
[565] :359:GETGLOBAL      v3 = Button6
[567] :359:GETTABLEKS     v2 = v3.MouseButton1Click
[568] :359:DUPCLOSURE     v4 = function()
-- proto pool id: 21
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :359:GETGLOBAL      v0 = SP
[004] :359:GETGLOBAL      v1 = Button6
[006] :359:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :359:LOADNIL        v0 = nil
[009] :359:SETGLOBAL      SP = v0
[010] :359:JUMP           -- jump to #14
end
[012] :359:GETGLOBAL      v0 = Button6
[014] :359:SETGLOBAL      SP = v0
[016] :359:GETGLOBAL      v0 = NewSP
[017] :359:CALL           v0()
[018] :359:RETURN         return
end
[571] :359:CALL           v2:Connect(v4)
[572] :359:RETURN         return
end
[574] :362:JUMPXEQKN      if p23 == 2 then -- goto #1130
[576] :363:GETIMPORT      v2 = print
[577] :363:GETUPVAL       v9 = u_v0
[579] :363:GETTABLEKS     v4 = v9.Name
[580] :363:LOADK          v5 = " - Devil Fruit "
[581] :363:MOVE           v6 = p23
[582] :363:LOADK          v7 = " = "
[583] :363:MOVE           v8 = p24
[584] :363:CONCAT         v3 = v4 .. v5 .. v6 .. v7 .. v8
[585] :363:CALL           v2(v3)
[587] :364:GETIMPORT      v2 = game
[588] :364:LOADK          v4 = "ContextActionService"
[591] :364:CALL           v2 = v2:GetService(v4)
[593] :364:GETIMPORT      v7 = script
[595] :364:GETTABLEKS     v5 = v7.Name
[596] :364:LOADK          v6 = "Power7"
[597] :364:CONCAT         v4 = v5 .. v6
[600] :364:CALL           v2:UnbindAction(v4)
[602] :365:GETIMPORT      v2 = game
[603] :365:LOADK          v4 = "ContextActionService"
[606] :365:CALL           v2 = v2:GetService(v4)
[608] :365:GETIMPORT      v7 = script
[610] :365:GETTABLEKS     v5 = v7.Name
[611] :365:LOADK          v6 = "Power8"
[612] :365:CONCAT         v4 = v5 .. v6
[615] :365:CALL           v2:UnbindAction(v4)
[617] :366:GETIMPORT      v2 = game
[618] :366:LOADK          v4 = "ContextActionService"
[621] :366:CALL           v2 = v2:GetService(v4)
[623] :366:GETIMPORT      v7 = script
[625] :366:GETTABLEKS     v5 = v7.Name
[626] :366:LOADK          v6 = "Power9"
[627] :366:CONCAT         v4 = v5 .. v6
[630] :366:CALL           v2:UnbindAction(v4)
[632] :367:GETIMPORT      v2 = game
[633] :367:LOADK          v4 = "ContextActionService"
[636] :367:CALL           v2 = v2:GetService(v4)
[638] :367:GETIMPORT      v7 = script
[640] :367:GETTABLEKS     v5 = v7.Name
[641] :367:LOADK          v6 = "Power10"
[642] :367:CONCAT         v4 = v5 .. v6
[645] :367:CALL           v2:UnbindAction(v4)
[647] :368:GETIMPORT      v2 = game
[648] :368:LOADK          v4 = "ContextActionService"
[651] :368:CALL           v2 = v2:GetService(v4)
[653] :368:GETIMPORT      v7 = script
[655] :368:GETTABLEKS     v5 = v7.Name
[656] :368:LOADK          v6 = "Power11"
[657] :368:CONCAT         v4 = v5 .. v6
[660] :368:CALL           v2:UnbindAction(v4)
[662] :369:GETIMPORT      v2 = game
[663] :369:LOADK          v4 = "ContextActionService"
[666] :369:CALL           v2 = v2:GetService(v4)
[668] :369:GETIMPORT      v7 = script
[670] :369:GETTABLEKS     v5 = v7.Name
[671] :369:LOADK          v6 = "Power12"
[672] :369:CONCAT         v4 = v5 .. v6
[675] :369:CALL           v2:UnbindAction(v4)
[677] :370:GETGLOBAL      v2 = Button7
[679] :370:JUMPXEQKNIL    if v2 ~= nil then -- goto #685
[681] :370:GETGLOBAL      v2 = Button7
[684] :370:CALL           v2:Destroy()
end
[686] :371:GETGLOBAL      v2 = Button8
[688] :371:JUMPXEQKNIL    if v2 ~= nil then -- goto #694
[690] :371:GETGLOBAL      v2 = Button8
[693] :371:CALL           v2:Destroy()
end
[695] :372:GETGLOBAL      v2 = Button9
[697] :372:JUMPXEQKNIL    if v2 ~= nil then -- goto #703
[699] :372:GETGLOBAL      v2 = Button9
[702] :372:CALL           v2:Destroy()
end
[704] :373:GETGLOBAL      v2 = Button10
[706] :373:JUMPXEQKNIL    if v2 ~= nil then -- goto #712
[708] :373:GETGLOBAL      v2 = Button10
[711] :373:CALL           v2:Destroy()
end
[713] :374:GETGLOBAL      v2 = Button11
[715] :374:JUMPXEQKNIL    if v2 ~= nil then -- goto #721
[717] :374:GETGLOBAL      v2 = Button11
[720] :374:CALL           v2:Destroy()
end
[722] :375:GETGLOBAL      v2 = Button12
[724] :375:JUMPXEQKNIL    if v2 ~= nil then -- goto #730
[726] :375:GETGLOBAL      v2 = Button12
[729] :375:CALL           v2:Destroy()
end
[731] :376:GETIMPORT      v3 = script
[733] :376:GETTABLEKS     v2 = v3.Name
[735] :376:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1130
[737] :377:GETIMPORT      v2 = game
[738] :377:LOADK          v4 = "ContextActionService"
[741] :377:CALL           v2 = v2:GetService(v4)
[743] :377:GETIMPORT      v7 = script
[745] :377:GETTABLEKS     v5 = v7.Name
[746] :377:LOADK          v6 = "Power7"
[747] :377:CONCAT         v4 = v5 .. v6
[749] :377:GETGLOBAL      v5 = Power1
[750] :377:LOADB          v6 = false
[752] :377:GETIMPORT      v8 = Enum.KeyCode
[753] :377:GETUPVAL       v12 = u_v1
[755] :377:GETTABLEKS     v11 = v12.Data
[757] :377:GETTABLEKS     v10 = v11.Basic_DF2A
[759] :377:GETTABLEKS     v9 = v10.Value
[760] :377:GETTABLE       v7 = v8[v9]
[763] :377:CALL           v2:BindAction(v4, v5, v6, v7)
[765] :378:GETIMPORT      v2 = game
[766] :378:LOADK          v4 = "ContextActionService"
[769] :378:CALL           v2 = v2:GetService(v4)
[771] :378:GETIMPORT      v7 = script
[773] :378:GETTABLEKS     v5 = v7.Name
[774] :378:LOADK          v6 = "Power8"
[775] :378:CONCAT         v4 = v5 .. v6
[777] :378:GETGLOBAL      v5 = Power2
[778] :378:LOADB          v6 = false
[780] :378:GETIMPORT      v8 = Enum.KeyCode
[781] :378:GETUPVAL       v12 = u_v1
[783] :378:GETTABLEKS     v11 = v12.Data
[785] :378:GETTABLEKS     v10 = v11.Basic_DF2B
[787] :378:GETTABLEKS     v9 = v10.Value
[788] :378:GETTABLE       v7 = v8[v9]
[791] :378:CALL           v2:BindAction(v4, v5, v6, v7)
[793] :379:GETIMPORT      v2 = game
[794] :379:LOADK          v4 = "ContextActionService"
[797] :379:CALL           v2 = v2:GetService(v4)
[799] :379:GETIMPORT      v7 = script
[801] :379:GETTABLEKS     v5 = v7.Name
[802] :379:LOADK          v6 = "Power9"
[803] :379:CONCAT         v4 = v5 .. v6
[805] :379:GETGLOBAL      v5 = Power3
[806] :379:LOADB          v6 = false
[808] :379:GETIMPORT      v8 = Enum.KeyCode
[809] :379:GETUPVAL       v12 = u_v1
[811] :379:GETTABLEKS     v11 = v12.Data
[813] :379:GETTABLEKS     v10 = v11.Basic_DF2C
[815] :379:GETTABLEKS     v9 = v10.Value
[816] :379:GETTABLE       v7 = v8[v9]
[819] :379:CALL           v2:BindAction(v4, v5, v6, v7)
[821] :380:GETIMPORT      v2 = game
[822] :380:LOADK          v4 = "ContextActionService"
[825] :380:CALL           v2 = v2:GetService(v4)
[827] :380:GETIMPORT      v7 = script
[829] :380:GETTABLEKS     v5 = v7.Name
[830] :380:LOADK          v6 = "Power10"
[831] :380:CONCAT         v4 = v5 .. v6
[833] :380:GETGLOBAL      v5 = Power4
[834] :380:LOADB          v6 = false
[836] :380:GETIMPORT      v8 = Enum.KeyCode
[837] :380:GETUPVAL       v12 = u_v1
[839] :380:GETTABLEKS     v11 = v12.Data
[841] :380:GETTABLEKS     v10 = v11.Basic_DF2D
[843] :380:GETTABLEKS     v9 = v10.Value
[844] :380:GETTABLE       v7 = v8[v9]
[847] :380:CALL           v2:BindAction(v4, v5, v6, v7)
[849] :381:GETIMPORT      v2 = game
[850] :381:LOADK          v4 = "ContextActionService"
[853] :381:CALL           v2 = v2:GetService(v4)
[855] :381:GETIMPORT      v7 = script
[857] :381:GETTABLEKS     v5 = v7.Name
[858] :381:LOADK          v6 = "Power11"
[859] :381:CONCAT         v4 = v5 .. v6
[861] :381:GETGLOBAL      v5 = Power5
[862] :381:LOADB          v6 = false
[864] :381:GETIMPORT      v8 = Enum.KeyCode
[865] :381:GETUPVAL       v12 = u_v1
[867] :381:GETTABLEKS     v11 = v12.Data
[869] :381:GETTABLEKS     v10 = v11.Basic_DF2E
[871] :381:GETTABLEKS     v9 = v10.Value
[872] :381:GETTABLE       v7 = v8[v9]
[875] :381:CALL           v2:BindAction(v4, v5, v6, v7)
[877] :382:GETIMPORT      v2 = game
[878] :382:LOADK          v4 = "ContextActionService"
[881] :382:CALL           v2 = v2:GetService(v4)
[883] :382:GETIMPORT      v7 = script
[885] :382:GETTABLEKS     v5 = v7.Name
[886] :382:LOADK          v6 = "Power12"
[887] :382:CONCAT         v4 = v5 .. v6
[889] :382:GETGLOBAL      v5 = Power6
[890] :382:LOADB          v6 = false
[892] :382:GETIMPORT      v8 = Enum.KeyCode
[893] :382:GETUPVAL       v12 = u_v1
[895] :382:GETTABLEKS     v11 = v12.Data
[897] :382:GETTABLEKS     v10 = v11.Basic_DF2F
[899] :382:GETTABLEKS     v9 = v10.Value
[900] :382:GETTABLE       v7 = v8[v9]
[903] :382:CALL           v2:BindAction(v4, v5, v6, v7)
[905] :383:GETIMPORT      v3 = game
[906] :383:LOADK          v5 = "UserInputService"
[909] :383:CALL           v3 = v3:GetService(v5)
[911] :383:GETTABLEKS     v2 = v3.TouchEnabled
[913] :383:JUMPXEQKB      if v2 == true then -- goto #1130
[914] :384:GETUPVAL       v5 = u_v0
[916] :384:GETTABLEKS     v4 = v5.PlayerGui
[918] :384:GETTABLEKS     v3 = v4.MobileContext
[920] :384:GETTABLEKS     v2 = v3.Button
[923] :384:CALL           v2 = v2:Clone()
[925] :384:SETGLOBAL      Button7 = v2
[926] :385:GETUPVAL       v5 = u_v0
[928] :385:GETTABLEKS     v4 = v5.PlayerGui
[930] :385:GETTABLEKS     v3 = v4.MobileContext
[932] :385:GETTABLEKS     v2 = v3.Button
[935] :385:CALL           v2 = v2:Clone()
[937] :385:SETGLOBAL      Button8 = v2
[938] :386:GETUPVAL       v5 = u_v0
[940] :386:GETTABLEKS     v4 = v5.PlayerGui
[942] :386:GETTABLEKS     v3 = v4.MobileContext
[944] :386:GETTABLEKS     v2 = v3.Button
[947] :386:CALL           v2 = v2:Clone()
[949] :386:SETGLOBAL      Button9 = v2
[950] :387:GETUPVAL       v5 = u_v0
[952] :387:GETTABLEKS     v4 = v5.PlayerGui
[954] :387:GETTABLEKS     v3 = v4.MobileContext
[956] :387:GETTABLEKS     v2 = v3.Button
[959] :387:CALL           v2 = v2:Clone()
[961] :387:SETGLOBAL      Button10 = v2
[962] :388:GETUPVAL       v5 = u_v0
[964] :388:GETTABLEKS     v4 = v5.PlayerGui
[966] :388:GETTABLEKS     v3 = v4.MobileContext
[968] :388:GETTABLEKS     v2 = v3.Button
[971] :388:CALL           v2 = v2:Clone()
[973] :388:SETGLOBAL      Button11 = v2
[974] :389:GETUPVAL       v5 = u_v0
[976] :389:GETTABLEKS     v4 = v5.PlayerGui
[978] :389:GETTABLEKS     v3 = v4.MobileContext
[980] :389:GETTABLEKS     v2 = v3.Button
[983] :389:CALL           v2 = v2:Clone()
[985] :389:SETGLOBAL      Button12 = v2
[987] :390:GETGLOBAL      v2 = Button7
[988] :390:LOADK          v3 = "Power7"
[990] :390:SETTABLEKS     v2.Name = v3
[992] :391:GETGLOBAL      v2 = Button8
[993] :391:LOADK          v3 = "Power8"
[995] :391:SETTABLEKS     v2.Name = v3
[997] :392:GETGLOBAL      v2 = Button9
[998] :392:LOADK          v3 = "Power9"
[1000] :392:SETTABLEKS     v2.Name = v3
[1002] :393:GETGLOBAL      v2 = Button10
[1003] :393:LOADK          v3 = "Power10"
[1005] :393:SETTABLEKS     v2.Name = v3
[1007] :394:GETGLOBAL      v2 = Button11
[1008] :394:LOADK          v3 = "Power11"
[1010] :394:SETTABLEKS     v2.Name = v3
[1012] :395:GETGLOBAL      v2 = Button12
[1013] :395:LOADK          v3 = "Power12"
[1015] :395:SETTABLEKS     v2.Name = v3
[1017] :396:GETGLOBAL      v2 = Button7
[1018] :396:GETUPVAL       v6 = u_v0
[1020] :396:GETTABLEKS     v5 = v6.PlayerGui
[1022] :396:GETTABLEKS     v4 = v5.MobileContext
[1024] :396:GETTABLEKS     v3 = v4.ContextActions2
[1026] :396:SETTABLEKS     v2.Parent = v3
[1028] :397:GETGLOBAL      v2 = Button8
[1029] :397:GETUPVAL       v6 = u_v0
[1031] :397:GETTABLEKS     v5 = v6.PlayerGui
[1033] :397:GETTABLEKS     v4 = v5.MobileContext
[1035] :397:GETTABLEKS     v3 = v4.ContextActions2
[1037] :397:SETTABLEKS     v2.Parent = v3
[1039] :398:GETGLOBAL      v2 = Button9
[1040] :398:GETUPVAL       v6 = u_v0
[1042] :398:GETTABLEKS     v5 = v6.PlayerGui
[1044] :398:GETTABLEKS     v4 = v5.MobileContext
[1046] :398:GETTABLEKS     v3 = v4.ContextActions2
[1048] :398:SETTABLEKS     v2.Parent = v3
[1050] :399:GETGLOBAL      v2 = Button10
[1051] :399:GETUPVAL       v6 = u_v0
[1053] :399:GETTABLEKS     v5 = v6.PlayerGui
[1055] :399:GETTABLEKS     v4 = v5.MobileContext
[1057] :399:GETTABLEKS     v3 = v4.ContextActions2
[1059] :399:SETTABLEKS     v2.Parent = v3
[1061] :400:GETGLOBAL      v2 = Button11
[1062] :400:GETUPVAL       v6 = u_v0
[1064] :400:GETTABLEKS     v5 = v6.PlayerGui
[1066] :400:GETTABLEKS     v4 = v5.MobileContext
[1068] :400:GETTABLEKS     v3 = v4.ContextActions2
[1070] :400:SETTABLEKS     v2.Parent = v3
[1072] :401:GETGLOBAL      v2 = Button12
[1073] :401:GETUPVAL       v6 = u_v0
[1075] :401:GETTABLEKS     v5 = v6.PlayerGui
[1077] :401:GETTABLEKS     v4 = v5.MobileContext
[1079] :401:GETTABLEKS     v3 = v4.ContextActions2
[1081] :401:SETTABLEKS     v2.Parent = v3
[1083] :402:GETGLOBAL      v3 = Button7
[1085] :402:GETTABLEKS     v2 = v3.MouseButton1Click
[1086] :402:DUPCLOSURE     v4 = function()
-- proto pool id: 22
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :402:GETGLOBAL      v0 = SP
[004] :402:GETGLOBAL      v1 = Button7
[006] :402:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :402:LOADNIL        v0 = nil
[009] :402:SETGLOBAL      SP = v0
[010] :402:JUMP           -- jump to #14
end
[012] :402:GETGLOBAL      v0 = Button7
[014] :402:SETGLOBAL      SP = v0
[016] :402:GETGLOBAL      v0 = NewSP
[017] :402:CALL           v0()
[018] :402:RETURN         return
end
[1089] :402:CALL           v2:Connect(v4)
[1091] :403:GETGLOBAL      v3 = Button8
[1093] :403:GETTABLEKS     v2 = v3.MouseButton1Click
[1094] :403:DUPCLOSURE     v4 = function()
-- proto pool id: 23
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :403:GETGLOBAL      v0 = SP
[004] :403:GETGLOBAL      v1 = Button8
[006] :403:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :403:LOADNIL        v0 = nil
[009] :403:SETGLOBAL      SP = v0
[010] :403:JUMP           -- jump to #14
end
[012] :403:GETGLOBAL      v0 = Button8
[014] :403:SETGLOBAL      SP = v0
[016] :403:GETGLOBAL      v0 = NewSP
[017] :403:CALL           v0()
[018] :403:RETURN         return
end
[1097] :403:CALL           v2:Connect(v4)
[1099] :404:GETGLOBAL      v3 = Button9
[1101] :404:GETTABLEKS     v2 = v3.MouseButton1Click
[1102] :404:DUPCLOSURE     v4 = function()
-- proto pool id: 24
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :404:GETGLOBAL      v0 = SP
[004] :404:GETGLOBAL      v1 = Button9
[006] :404:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :404:LOADNIL        v0 = nil
[009] :404:SETGLOBAL      SP = v0
[010] :404:JUMP           -- jump to #14
end
[012] :404:GETGLOBAL      v0 = Button9
[014] :404:SETGLOBAL      SP = v0
[016] :404:GETGLOBAL      v0 = NewSP
[017] :404:CALL           v0()
[018] :404:RETURN         return
end
[1105] :404:CALL           v2:Connect(v4)
[1107] :405:GETGLOBAL      v3 = Button10
[1109] :405:GETTABLEKS     v2 = v3.MouseButton1Click
[1110] :405:DUPCLOSURE     v4 = function()
-- proto pool id: 25
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :405:GETGLOBAL      v0 = SP
[004] :405:GETGLOBAL      v1 = Button10
[006] :405:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :405:LOADNIL        v0 = nil
[009] :405:SETGLOBAL      SP = v0
[010] :405:JUMP           -- jump to #14
end
[012] :405:GETGLOBAL      v0 = Button10
[014] :405:SETGLOBAL      SP = v0
[016] :405:GETGLOBAL      v0 = NewSP
[017] :405:CALL           v0()
[018] :405:RETURN         return
end
[1113] :405:CALL           v2:Connect(v4)
[1115] :406:GETGLOBAL      v3 = Button11
[1117] :406:GETTABLEKS     v2 = v3.MouseButton1Click
[1118] :406:DUPCLOSURE     v4 = function()
-- proto pool id: 26
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :406:GETGLOBAL      v0 = SP
[004] :406:GETGLOBAL      v1 = Button11
[006] :406:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :406:LOADNIL        v0 = nil
[009] :406:SETGLOBAL      SP = v0
[010] :406:JUMP           -- jump to #14
end
[012] :406:GETGLOBAL      v0 = Button11
[014] :406:SETGLOBAL      SP = v0
[016] :406:GETGLOBAL      v0 = NewSP
[017] :406:CALL           v0()
[018] :406:RETURN         return
end
[1121] :406:CALL           v2:Connect(v4)
[1123] :407:GETGLOBAL      v3 = Button12
[1125] :407:GETTABLEKS     v2 = v3.MouseButton1Click
[1126] :407:DUPCLOSURE     v4 = function()
-- proto pool id: 27
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :407:GETGLOBAL      v0 = SP
[004] :407:GETGLOBAL      v1 = Button12
[006] :407:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :407:LOADNIL        v0 = nil
[009] :407:SETGLOBAL      SP = v0
[010] :407:JUMP           -- jump to #14
end
[012] :407:GETGLOBAL      v0 = Button12
[014] :407:SETGLOBAL      SP = v0
[016] :407:GETGLOBAL      v0 = NewSP
[017] :407:CALL           v0()
[018] :407:RETURN         return
end
[1129] :407:CALL           v2:Connect(v4)
end
end
end
end
end
[1130] :411:RETURN         return
end
v4 = Update
[543] :668:GETIMPORT      v8 = script
[545] :668:GETTABLEKS     v7 = v8.Parent
[547] :668:GETTABLEKS     v6 = v7.DevilFruitUpdate
[549] :668:GETTABLEKS     v5 = v6.OnClientEvent
[550] :668:DUPCLOSURE     v7 = function(p25, p26)
-- proto pool id: 29
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 5
-- size constants: 0
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: true
[001] :413:GETUPVAL       v0 = u_v4
[002] :413:MOVE           v1 = p25
[003] :413:MOVE           v2 = p26
[004] :413:CALL           v0(v1, v2)
[005] :414:RETURN         return
end
[554] :668:CALL           v5:connect(v7)
[556] :671:GETTABLEKS     v6 = v1.Data
[558] :671:GETTABLEKS     v5 = v6.Basic_DF1A
[559] :671:LOADK          v7 = "Value"
[562] :671:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[563] :671:DUPCLOSURE     v7 = function()
-- proto pool id: 30
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :415:GETUPVAL       v0 = u_v4
[002] :415:LOADN          v1 = 1
[003] :415:GETUPVAL       v5 = u_v1
[005] :415:GETTABLEKS     v4 = v5.Data
[007] :415:GETTABLEKS     v3 = v4.DevilFruit
[009] :415:GETTABLEKS     v2 = v3.Value
[010] :415:CALL           v0(v1, v2)
[011] :415:RETURN         return
end
[568] :671:CALL           v5:Connect(v7)
[570] :672:GETTABLEKS     v6 = v1.Data
[572] :672:GETTABLEKS     v5 = v6.Basic_DF1B
[573] :672:LOADK          v7 = "Value"
[576] :672:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[577] :672:DUPCLOSURE     v7 = function()
-- proto pool id: 31
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :416:GETUPVAL       v0 = u_v4
[002] :416:LOADN          v1 = 1
[003] :416:GETUPVAL       v5 = u_v1
[005] :416:GETTABLEKS     v4 = v5.Data
[007] :416:GETTABLEKS     v3 = v4.DevilFruit
[009] :416:GETTABLEKS     v2 = v3.Value
[010] :416:CALL           v0(v1, v2)
[011] :416:RETURN         return
end
[582] :672:CALL           v5:Connect(v7)
[584] :673:GETTABLEKS     v6 = v1.Data
[586] :673:GETTABLEKS     v5 = v6.Basic_DF1C
[587] :673:LOADK          v7 = "Value"
[590] :673:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[591] :673:DUPCLOSURE     v7 = function()
-- proto pool id: 32
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :417:GETUPVAL       v0 = u_v4
[002] :417:LOADN          v1 = 1
[003] :417:GETUPVAL       v5 = u_v1
[005] :417:GETTABLEKS     v4 = v5.Data
[007] :417:GETTABLEKS     v3 = v4.DevilFruit
[009] :417:GETTABLEKS     v2 = v3.Value
[010] :417:CALL           v0(v1, v2)
[011] :417:RETURN         return
end
[596] :673:CALL           v5:Connect(v7)
[598] :674:GETTABLEKS     v6 = v1.Data
[600] :674:GETTABLEKS     v5 = v6.Basic_DF1D
[601] :674:LOADK          v7 = "Value"
[604] :674:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[605] :674:DUPCLOSURE     v7 = function()
-- proto pool id: 33
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :418:GETUPVAL       v0 = u_v4
[002] :418:LOADN          v1 = 1
[003] :418:GETUPVAL       v5 = u_v1
[005] :418:GETTABLEKS     v4 = v5.Data
[007] :418:GETTABLEKS     v3 = v4.DevilFruit
[009] :418:GETTABLEKS     v2 = v3.Value
[010] :418:CALL           v0(v1, v2)
[011] :418:RETURN         return
end
[610] :674:CALL           v5:Connect(v7)
[612] :675:GETTABLEKS     v6 = v1.Data
[614] :675:GETTABLEKS     v5 = v6.Basic_DF1E
[615] :675:LOADK          v7 = "Value"
[618] :675:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[619] :675:DUPCLOSURE     v7 = function()
-- proto pool id: 34
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :419:GETUPVAL       v0 = u_v4
[002] :419:LOADN          v1 = 1
[003] :419:GETUPVAL       v5 = u_v1
[005] :419:GETTABLEKS     v4 = v5.Data
[007] :419:GETTABLEKS     v3 = v4.DevilFruit
[009] :419:GETTABLEKS     v2 = v3.Value
[010] :419:CALL           v0(v1, v2)
[011] :419:RETURN         return
end
[624] :675:CALL           v5:Connect(v7)
[626] :676:GETTABLEKS     v6 = v1.Data
[628] :676:GETTABLEKS     v5 = v6.Basic_DF1F
[629] :676:LOADK          v7 = "Value"
[632] :676:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[633] :676:DUPCLOSURE     v7 = function()
-- proto pool id: 35
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :420:GETUPVAL       v0 = u_v4
[002] :420:LOADN          v1 = 1
[003] :420:GETUPVAL       v5 = u_v1
[005] :420:GETTABLEKS     v4 = v5.Data
[007] :420:GETTABLEKS     v3 = v4.DevilFruit
[009] :420:GETTABLEKS     v2 = v3.Value
[010] :420:CALL           v0(v1, v2)
[011] :420:RETURN         return
end
[638] :676:CALL           v5:Connect(v7)
[640] :677:GETTABLEKS     v6 = v1.Data
[642] :677:GETTABLEKS     v5 = v6.Basic_DF2A
[643] :677:LOADK          v7 = "Value"
[646] :677:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[647] :677:DUPCLOSURE     v7 = function()
-- proto pool id: 36
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :421:GETUPVAL       v0 = u_v4
[002] :421:LOADN          v1 = 2
[003] :421:GETUPVAL       v5 = u_v1
[005] :421:GETTABLEKS     v4 = v5.Data
[007] :421:GETTABLEKS     v3 = v4.DevilFruit2
[009] :421:GETTABLEKS     v2 = v3.Value
[010] :421:CALL           v0(v1, v2)
[011] :421:RETURN         return
end
[652] :677:CALL           v5:Connect(v7)
[654] :678:GETTABLEKS     v6 = v1.Data
[656] :678:GETTABLEKS     v5 = v6.Basic_DF2B
[657] :678:LOADK          v7 = "Value"
[660] :678:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[661] :678:DUPCLOSURE     v7 = function()
-- proto pool id: 37
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :422:GETUPVAL       v0 = u_v4
[002] :422:LOADN          v1 = 2
[003] :422:GETUPVAL       v5 = u_v1
[005] :422:GETTABLEKS     v4 = v5.Data
[007] :422:GETTABLEKS     v3 = v4.DevilFruit2
[009] :422:GETTABLEKS     v2 = v3.Value
[010] :422:CALL           v0(v1, v2)
[011] :422:RETURN         return
end
[666] :678:CALL           v5:Connect(v7)
[668] :679:GETTABLEKS     v6 = v1.Data
[670] :679:GETTABLEKS     v5 = v6.Basic_DF2C
[671] :679:LOADK          v7 = "Value"
[674] :679:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[675] :679:DUPCLOSURE     v7 = function()
-- proto pool id: 38
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :423:GETUPVAL       v0 = u_v4
[002] :423:LOADN          v1 = 2
[003] :423:GETUPVAL       v5 = u_v1
[005] :423:GETTABLEKS     v4 = v5.Data
[007] :423:GETTABLEKS     v3 = v4.DevilFruit2
[009] :423:GETTABLEKS     v2 = v3.Value
[010] :423:CALL           v0(v1, v2)
[011] :423:RETURN         return
end
[680] :679:CALL           v5:Connect(v7)
[682] :680:GETTABLEKS     v6 = v1.Data
[684] :680:GETTABLEKS     v5 = v6.Basic_DF2D
[685] :680:LOADK          v7 = "Value"
[688] :680:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[689] :680:DUPCLOSURE     v7 = function()
-- proto pool id: 39
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :424:GETUPVAL       v0 = u_v4
[002] :424:LOADN          v1 = 2
[003] :424:GETUPVAL       v5 = u_v1
[005] :424:GETTABLEKS     v4 = v5.Data
[007] :424:GETTABLEKS     v3 = v4.DevilFruit2
[009] :424:GETTABLEKS     v2 = v3.Value
[010] :424:CALL           v0(v1, v2)
[011] :424:RETURN         return
end
[694] :680:CALL           v5:Connect(v7)
[696] :681:GETTABLEKS     v6 = v1.Data
[698] :681:GETTABLEKS     v5 = v6.Basic_DF2E
[699] :681:LOADK          v7 = "Value"
[702] :681:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[703] :681:DUPCLOSURE     v7 = function()
-- proto pool id: 40
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :425:GETUPVAL       v0 = u_v4
[002] :425:LOADN          v1 = 2
[003] :425:GETUPVAL       v5 = u_v1
[005] :425:GETTABLEKS     v4 = v5.Data
[007] :425:GETTABLEKS     v3 = v4.DevilFruit2
[009] :425:GETTABLEKS     v2 = v3.Value
[010] :425:CALL           v0(v1, v2)
[011] :425:RETURN         return
end
[708] :681:CALL           v5:Connect(v7)
[710] :682:GETTABLEKS     v6 = v1.Data
[712] :682:GETTABLEKS     v5 = v6.Basic_DF2F
[713] :682:LOADK          v7 = "Value"
[716] :682:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[717] :682:DUPCLOSURE     v7 = function()
-- proto pool id: 41
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: true
[001] :426:GETUPVAL       v0 = u_v4
[002] :426:LOADN          v1 = 2
[003] :426:GETUPVAL       v5 = u_v1
[005] :426:GETTABLEKS     v4 = v5.Data
[007] :426:GETTABLEKS     v3 = v4.DevilFruit2
[009] :426:GETTABLEKS     v2 = v3.Value
[010] :426:CALL           v0(v1, v2)
[011] :426:RETURN         return
end
[722] :682:CALL           v5:Connect(v7)
[724] :684:GETTABLEKS     v5 = v1.Data
[725] :684:LOADK          v7 = "DevilFruit"
[728] :684:CALL           v5 = v5:FindFirstChild(v7)
[730] :685:GETTABLEKS     v6 = v1.Data
[731] :685:LOADK          v8 = "DevilFruit2"
[734] :685:CALL           v6 = v6:FindFirstChild(v8)
[735] :688:MOVE           v7 = v4
[736] :688:LOADN          v8 = 1
[738] :688:GETTABLEKS     v9 = v5.Value
[739] :688:CALL           v7(v8, v9)
[740] :689:MOVE           v7 = v4
[741] :689:LOADN          v8 = 2
[743] :689:GETTABLEKS     v9 = v6.Value
[744] :689:CALL           v7(v8, v9)
[746] :691:GETIMPORT      v11 = script
[748] :691:GETTABLEKS     v10 = v11.Parent
[750] :691:GETTABLEKS     v9 = v10.Parent
[752] :691:GETTABLEKS     v8 = v9.OrderedPair
[754] :691:GETTABLEKS     v7 = v8.OnClientEvent
[755] :691:DUPCLOSURE     v9 = function(p27, p28, p29, p30)
-- proto pool id: 42
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 104
-- size constants: 22
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[002] :436:GETIMPORT      v1 = script
[004] :436:GETTABLEKS     v0 = v1.Name
[006] :436:JUMPIFEQ       if p28 == v0 then -- goto #8
[007] :436:RETURN         return
end
[009] :437:JUMPXEQKS      if p29 ~= 1 then -- goto #12
[011] :437:JUMPXEQKS      if p29 == 7 then -- goto #24
end
[013] :438:GETGLOBAL      v0 = Power1
[015] :438:GETIMPORT      v5 = script
[017] :438:GETTABLEKS     v2 = v5.Name
[018] :438:LOADK          v3 = "Power"
[019] :438:MOVE           v4 = p29
[020] :438:CONCAT         v1 = v2 .. v3 .. v4
[021] :438:MOVE           v2 = p30
[022] :438:LOADNIL        v3 = nil
[023] :438:CALL           v0(v1, v2, v3)
end
[025] :440:JUMPXEQKS      if p29 ~= 2 then -- goto #28
[027] :440:JUMPXEQKS      if p29 == 8 then -- goto #40
end
[029] :441:GETGLOBAL      v0 = Power2
[031] :441:GETIMPORT      v5 = script
[033] :441:GETTABLEKS     v2 = v5.Name
[034] :441:LOADK          v3 = "Power"
[035] :441:MOVE           v4 = p29
[036] :441:CONCAT         v1 = v2 .. v3 .. v4
[037] :441:MOVE           v2 = p30
[038] :441:LOADNIL        v3 = nil
[039] :441:CALL           v0(v1, v2, v3)
end
[041] :443:JUMPXEQKS      if p29 ~= 3 then -- goto #44
[043] :443:JUMPXEQKS      if p29 == 9 then -- goto #56
end
[045] :444:GETGLOBAL      v0 = Power3
[047] :444:GETIMPORT      v5 = script
[049] :444:GETTABLEKS     v2 = v5.Name
[050] :444:LOADK          v3 = "Power"
[051] :444:MOVE           v4 = p29
[052] :444:CONCAT         v1 = v2 .. v3 .. v4
[053] :444:MOVE           v2 = p30
[054] :444:LOADNIL        v3 = nil
[055] :444:CALL           v0(v1, v2, v3)
end
[057] :446:JUMPXEQKS      if p29 ~= 4 then -- goto #60
[059] :446:JUMPXEQKS      if p29 == 10 then -- goto #72
end
[061] :447:GETGLOBAL      v0 = Power4
[063] :447:GETIMPORT      v5 = script
[065] :447:GETTABLEKS     v2 = v5.Name
[066] :447:LOADK          v3 = "Power"
[067] :447:MOVE           v4 = p29
[068] :447:CONCAT         v1 = v2 .. v3 .. v4
[069] :447:MOVE           v2 = p30
[070] :447:LOADNIL        v3 = nil
[071] :447:CALL           v0(v1, v2, v3)
end
[073] :449:JUMPXEQKS      if p29 ~= 5 then -- goto #76
[075] :449:JUMPXEQKS      if p29 == 11 then -- goto #88
end
[077] :450:GETGLOBAL      v0 = Power5
[079] :450:GETIMPORT      v5 = script
[081] :450:GETTABLEKS     v2 = v5.Name
[082] :450:LOADK          v3 = "Power"
[083] :450:MOVE           v4 = p29
[084] :450:CONCAT         v1 = v2 .. v3 .. v4
[085] :450:MOVE           v2 = p30
[086] :450:LOADNIL        v3 = nil
[087] :450:CALL           v0(v1, v2, v3)
end
[089] :452:JUMPXEQKS      if p29 ~= 6 then -- goto #92
[091] :452:JUMPXEQKS      if p29 == 12 then -- goto #104
end
[093] :453:GETGLOBAL      v0 = Power6
[095] :453:GETIMPORT      v5 = script
[097] :453:GETTABLEKS     v2 = v5.Name
[098] :453:LOADK          v3 = "Power"
[099] :453:MOVE           v4 = p29
[100] :453:CONCAT         v1 = v2 .. v3 .. v4
[101] :453:MOVE           v2 = p30
[102] :453:LOADNIL        v3 = nil
[103] :453:CALL           v0(v1, v2, v3)
end
[104] :455:RETURN         return
end
[758] :691:CALL           v7:Connect(v9)
[760] :713:GETIMPORT      v9 = script
[762] :713:GETTABLEKS     v8 = v9.Controller
[764] :713:GETTABLEKS     v7 = v8.Event
[765] :713:DUPCLOSURE     v9 = function(p31, p32, p33)
-- proto pool id: 43
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 169
-- size constants: 15
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :458:GETIMPORT      v3 = script
[004] :458:GETTABLEKS     v1 = v3.Name
[005] :458:LOADK          v2 = "Power1"
[006] :458:CONCAT         v0 = v1 .. v2
[008] :458:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #15
[010] :458:GETGLOBAL      v0 = Power1
[011] :458:MOVE           v1 = p31
[012] :458:MOVE           v2 = p32
[013] :458:MOVE           v3 = p33
[014] :458:CALL           v0(v1, v2, v3)
end
[016] :459:GETIMPORT      v3 = script
[018] :459:GETTABLEKS     v1 = v3.Name
[019] :459:LOADK          v2 = "Power2"
[020] :459:CONCAT         v0 = v1 .. v2
[022] :459:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #29
[024] :459:GETGLOBAL      v0 = Power2
[025] :459:MOVE           v1 = p31
[026] :459:MOVE           v2 = p32
[027] :459:MOVE           v3 = p33
[028] :459:CALL           v0(v1, v2, v3)
end
[030] :460:GETIMPORT      v3 = script
[032] :460:GETTABLEKS     v1 = v3.Name
[033] :460:LOADK          v2 = "Power3"
[034] :460:CONCAT         v0 = v1 .. v2
[036] :460:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #43
[038] :460:GETGLOBAL      v0 = Power3
[039] :460:MOVE           v1 = p31
[040] :460:MOVE           v2 = p32
[041] :460:MOVE           v3 = p33
[042] :460:CALL           v0(v1, v2, v3)
end
[044] :461:GETIMPORT      v3 = script
[046] :461:GETTABLEKS     v1 = v3.Name
[047] :461:LOADK          v2 = "Power4"
[048] :461:CONCAT         v0 = v1 .. v2
[050] :461:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #57
[052] :461:GETGLOBAL      v0 = Power4
[053] :461:MOVE           v1 = p31
[054] :461:MOVE           v2 = p32
[055] :461:MOVE           v3 = p33
[056] :461:CALL           v0(v1, v2, v3)
end
[058] :462:GETIMPORT      v3 = script
[060] :462:GETTABLEKS     v1 = v3.Name
[061] :462:LOADK          v2 = "Power5"
[062] :462:CONCAT         v0 = v1 .. v2
[064] :462:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #71
[066] :462:GETGLOBAL      v0 = Power5
[067] :462:MOVE           v1 = p31
[068] :462:MOVE           v2 = p32
[069] :462:MOVE           v3 = p33
[070] :462:CALL           v0(v1, v2, v3)
end
[072] :463:GETIMPORT      v3 = script
[074] :463:GETTABLEKS     v1 = v3.Name
[075] :463:LOADK          v2 = "Power6"
[076] :463:CONCAT         v0 = v1 .. v2
[078] :463:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #85
[080] :463:GETGLOBAL      v0 = Power6
[081] :463:MOVE           v1 = p31
[082] :463:MOVE           v2 = p32
[083] :463:MOVE           v3 = p33
[084] :463:CALL           v0(v1, v2, v3)
end
[086] :464:GETIMPORT      v3 = script
[088] :464:GETTABLEKS     v1 = v3.Name
[089] :464:LOADK          v2 = "Power7"
[090] :464:CONCAT         v0 = v1 .. v2
[092] :464:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #99
[094] :464:GETGLOBAL      v0 = Power1
[095] :464:MOVE           v1 = p31
[096] :464:MOVE           v2 = p32
[097] :464:MOVE           v3 = p33
[098] :464:CALL           v0(v1, v2, v3)
end
[100] :465:GETIMPORT      v3 = script
[102] :465:GETTABLEKS     v1 = v3.Name
[103] :465:LOADK          v2 = "Power8"
[104] :465:CONCAT         v0 = v1 .. v2
[106] :465:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #113
[108] :465:GETGLOBAL      v0 = Power2
[109] :465:MOVE           v1 = p31
[110] :465:MOVE           v2 = p32
[111] :465:MOVE           v3 = p33
[112] :465:CALL           v0(v1, v2, v3)
end
[114] :466:GETIMPORT      v3 = script
[116] :466:GETTABLEKS     v1 = v3.Name
[117] :466:LOADK          v2 = "Power9"
[118] :466:CONCAT         v0 = v1 .. v2
[120] :466:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #127
[122] :466:GETGLOBAL      v0 = Power3
[123] :466:MOVE           v1 = p31
[124] :466:MOVE           v2 = p32
[125] :466:MOVE           v3 = p33
[126] :466:CALL           v0(v1, v2, v3)
end
[128] :467:GETIMPORT      v3 = script
[130] :467:GETTABLEKS     v1 = v3.Name
[131] :467:LOADK          v2 = "Power10"
[132] :467:CONCAT         v0 = v1 .. v2
[134] :467:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #141
[136] :467:GETGLOBAL      v0 = Power4
[137] :467:MOVE           v1 = p31
[138] :467:MOVE           v2 = p32
[139] :467:MOVE           v3 = p33
[140] :467:CALL           v0(v1, v2, v3)
end
[142] :468:GETIMPORT      v3 = script
[144] :468:GETTABLEKS     v1 = v3.Name
[145] :468:LOADK          v2 = "Power11"
[146] :468:CONCAT         v0 = v1 .. v2
[148] :468:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #155
[150] :468:GETGLOBAL      v0 = Power5
[151] :468:MOVE           v1 = p31
[152] :468:MOVE           v2 = p32
[153] :468:MOVE           v3 = p33
[154] :468:CALL           v0(v1, v2, v3)
end
[156] :469:GETIMPORT      v3 = script
[158] :469:GETTABLEKS     v1 = v3.Name
[159] :469:LOADK          v2 = "Power12"
[160] :469:CONCAT         v0 = v1 .. v2
[162] :469:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #169
[164] :469:GETGLOBAL      v0 = Power6
[165] :469:MOVE           v1 = p31
[166] :469:MOVE           v2 = p32
[167] :469:MOVE           v3 = p33
[168] :469:CALL           v0(v1, v2, v3)
end
[169] :470:RETURN         return
end
[768] :713:CALL           v7:Connect(v9)
[770] :984:GETIMPORT      v9 = script
[772] :984:GETTABLEKS     v8 = v9.Parent
[774] :984:GETTABLEKS     v7 = v8.Parent
[775] :984:LOADK          v9 = "DPAD"
[778] :984:CALL           v7 = v7:WaitForChild(v9)
[780] :984:SETGLOBAL      DPAD = v7
[781] :985:DUPCLOSURE     
local function Conser(p34, p35, p36)
-- proto pool id: 44
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 242
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 8
-- is typed: true
[001] :474:GETUPVAL       v3 = u_v1
[003] :474:GETTABLEKS     v2 = v3.Data
[005] :474:GETTABLEKS     v1 = v2.DevilFruit
[007] :474:GETTABLEKS     v0 = v1.Value
[009] :474:GETIMPORT      v2 = script
[011] :474:GETTABLEKS     v1 = v2.Name
[013] :474:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #122
[015] :475:GETGLOBAL      v1 = DPAD
[017] :475:GETTABLEKS     v0 = v1.Value
[019] :475:JUMPXEQKN      if v0 == 1 then -- goto #32
[021] :475:GETGLOBAL      v0 = Power1
[023] :475:GETIMPORT      v4 = script
[025] :475:GETTABLEKS     v2 = v4.Name
[026] :475:LOADK          v3 = "Power1"
[027] :475:CONCAT         v1 = v2 .. v3
[028] :475:MOVE           v2 = p35
[029] :475:MOVE           v3 = p36
[030] :475:CALL           v0(v1, v2, v3)
[031] :475:RETURN         return
end
[033] :476:GETGLOBAL      v1 = DPAD
[035] :476:GETTABLEKS     v0 = v1.Value
[037] :476:JUMPXEQKN      if v0 == 2 then -- goto #50
[039] :476:GETGLOBAL      v0 = Power2
[041] :476:GETIMPORT      v4 = script
[043] :476:GETTABLEKS     v2 = v4.Name
[044] :476:LOADK          v3 = "Power2"
[045] :476:CONCAT         v1 = v2 .. v3
[046] :476:MOVE           v2 = p35
[047] :476:MOVE           v3 = p36
[048] :476:CALL           v0(v1, v2, v3)
[049] :476:RETURN         return
end
[051] :477:GETGLOBAL      v1 = DPAD
[053] :477:GETTABLEKS     v0 = v1.Value
[055] :477:JUMPXEQKN      if v0 == 3 then -- goto #68
[057] :477:GETGLOBAL      v0 = Power3
[059] :477:GETIMPORT      v4 = script
[061] :477:GETTABLEKS     v2 = v4.Name
[062] :477:LOADK          v3 = "Power3"
[063] :477:CONCAT         v1 = v2 .. v3
[064] :477:MOVE           v2 = p35
[065] :477:MOVE           v3 = p36
[066] :477:CALL           v0(v1, v2, v3)
[067] :477:RETURN         return
end
[069] :478:GETGLOBAL      v1 = DPAD
[071] :478:GETTABLEKS     v0 = v1.Value
[073] :478:JUMPXEQKN      if v0 == 4 then -- goto #86
[075] :478:GETGLOBAL      v0 = Power4
[077] :478:GETIMPORT      v4 = script
[079] :478:GETTABLEKS     v2 = v4.Name
[080] :478:LOADK          v3 = "Power4"
[081] :478:CONCAT         v1 = v2 .. v3
[082] :478:MOVE           v2 = p35
[083] :478:MOVE           v3 = p36
[084] :478:CALL           v0(v1, v2, v3)
[085] :478:RETURN         return
end
[087] :479:GETGLOBAL      v1 = DPAD
[089] :479:GETTABLEKS     v0 = v1.Value
[091] :479:JUMPXEQKN      if v0 == 5 then -- goto #104
[093] :479:GETGLOBAL      v0 = Power5
[095] :479:GETIMPORT      v4 = script
[097] :479:GETTABLEKS     v2 = v4.Name
[098] :479:LOADK          v3 = "Power5"
[099] :479:CONCAT         v1 = v2 .. v3
[100] :479:MOVE           v2 = p35
[101] :479:MOVE           v3 = p36
[102] :479:CALL           v0(v1, v2, v3)
[103] :479:RETURN         return
end
[105] :480:GETGLOBAL      v1 = DPAD
[107] :480:GETTABLEKS     v0 = v1.Value
[109] :480:JUMPXEQKN      if v0 == 6 then -- goto #242
[111] :480:GETGLOBAL      v0 = Power6
[113] :480:GETIMPORT      v4 = script
[115] :480:GETTABLEKS     v2 = v4.Name
[116] :480:LOADK          v3 = "Power6"
[117] :480:CONCAT         v1 = v2 .. v3
[118] :480:MOVE           v2 = p35
[119] :480:MOVE           v3 = p36
[120] :480:CALL           v0(v1, v2, v3)
[121] :480:RETURN         return
end
[122] :482:GETUPVAL       v3 = u_v1
[124] :482:GETTABLEKS     v2 = v3.Data
[126] :482:GETTABLEKS     v1 = v2.DevilFruit2
[128] :482:GETTABLEKS     v0 = v1.Value
[130] :482:GETIMPORT      v2 = script
[132] :482:GETTABLEKS     v1 = v2.Name
[134] :482:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #242
[136] :483:GETGLOBAL      v1 = DPAD
[138] :483:GETTABLEKS     v0 = v1.Value
[140] :483:JUMPXEQKN      if v0 == 7 then -- goto #153
[142] :483:GETGLOBAL      v0 = Power1
[144] :483:GETIMPORT      v4 = script
[146] :483:GETTABLEKS     v2 = v4.Name
[147] :483:LOADK          v3 = "Power7"
[148] :483:CONCAT         v1 = v2 .. v3
[149] :483:MOVE           v2 = p35
[150] :483:MOVE           v3 = p36
[151] :483:CALL           v0(v1, v2, v3)
[152] :483:RETURN         return
end
[154] :484:GETGLOBAL      v1 = DPAD
[156] :484:GETTABLEKS     v0 = v1.Value
[158] :484:JUMPXEQKN      if v0 == 8 then -- goto #171
[160] :484:GETGLOBAL      v0 = Power2
[162] :484:GETIMPORT      v4 = script
[164] :484:GETTABLEKS     v2 = v4.Name
[165] :484:LOADK          v3 = "Power8"
[166] :484:CONCAT         v1 = v2 .. v3
[167] :484:MOVE           v2 = p35
[168] :484:MOVE           v3 = p36
[169] :484:CALL           v0(v1, v2, v3)
[170] :484:RETURN         return
end
[172] :485:GETGLOBAL      v1 = DPAD
[174] :485:GETTABLEKS     v0 = v1.Value
[176] :485:JUMPXEQKN      if v0 == 9 then -- goto #189
[178] :485:GETGLOBAL      v0 = Power3
[180] :485:GETIMPORT      v4 = script
[182] :485:GETTABLEKS     v2 = v4.Name
[183] :485:LOADK          v3 = "Power9"
[184] :485:CONCAT         v1 = v2 .. v3
[185] :485:MOVE           v2 = p35
[186] :485:MOVE           v3 = p36
[187] :485:CALL           v0(v1, v2, v3)
[188] :485:RETURN         return
end
[190] :486:GETGLOBAL      v1 = DPAD
[192] :486:GETTABLEKS     v0 = v1.Value
[194] :486:JUMPXEQKN      if v0 == 10 then -- goto #207
[196] :486:GETGLOBAL      v0 = Power4
[198] :486:GETIMPORT      v4 = script
[200] :486:GETTABLEKS     v2 = v4.Name
[201] :486:LOADK          v3 = "Power10"
[202] :486:CONCAT         v1 = v2 .. v3
[203] :486:MOVE           v2 = p35
[204] :486:MOVE           v3 = p36
[205] :486:CALL           v0(v1, v2, v3)
[206] :486:RETURN         return
end
[208] :487:GETGLOBAL      v1 = DPAD
[210] :487:GETTABLEKS     v0 = v1.Value
[212] :487:JUMPXEQKN      if v0 == 11 then -- goto #225
[214] :487:GETGLOBAL      v0 = Power5
[216] :487:GETIMPORT      v4 = script
[218] :487:GETTABLEKS     v2 = v4.Name
[219] :487:LOADK          v3 = "Power11"
[220] :487:CONCAT         v1 = v2 .. v3
[221] :487:MOVE           v2 = p35
[222] :487:MOVE           v3 = p36
[223] :487:CALL           v0(v1, v2, v3)
[224] :487:RETURN         return
end
[226] :488:GETGLOBAL      v1 = DPAD
[228] :488:GETTABLEKS     v0 = v1.Value
[230] :488:JUMPXEQKN      if v0 == 12 then -- goto #242
[232] :488:GETGLOBAL      v0 = Power6
[234] :488:GETIMPORT      v4 = script
[236] :488:GETTABLEKS     v2 = v4.Name
[237] :488:LOADK          v3 = "Power12"
[238] :488:CONCAT         v1 = v2 .. v3
[239] :488:MOVE           v2 = p35
[240] :488:MOVE           v3 = p36
[241] :488:CALL           v0(v1, v2, v3)
end
end
end
[242] :491:RETURN         return
end
v7 = Conser
[784] :985:SETGLOBAL      Conser = v7
[785] :1004:NEWCLOSURE     
local function UpdateDPAD()
-- proto pool id: 45
-- num upvalues: 4
-- num inner protos: 0
-- size instructions: 145
-- size constants: 25
-- lineinfo gap: 24
-- max stack size: 11
-- is typed: true
[001] :493:GETUPVAL       v0 = u_v2
[003] :493:JUMPXEQKB      if v0 == true then -- goto #145
[005] :494:GETGLOBAL      v1 = DPAD
[007] :494:GETTABLEKS     v0 = v1.Value
[008] :494:LOADN          v1 = 1
[010] :494:JUMPIFNOTLE    if v1 <= v0 then -- goto #75
[012] :494:GETGLOBAL      v1 = DPAD
[014] :494:GETTABLEKS     v0 = v1.Value
[015] :494:LOADN          v1 = 6
[017] :494:JUMPIFNOTLE    if v0 <= v1 then -- goto #75
[018] :494:GETUPVAL       v1 = u_v5
[020] :494:GETTABLEKS     v0 = v1.Value
[022] :494:GETIMPORT      v2 = script
[024] :494:GETTABLEKS     v1 = v2.Name
[026] :494:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #75
[028] :495:GETIMPORT      v0 = game
[029] :495:LOADK          v2 = "ContextActionService"
[032] :495:CALL           v0 = v0:GetService(v2)
[034] :495:GETIMPORT      v5 = script
[036] :495:GETTABLEKS     v3 = v5.Name
[037] :495:LOADK          v4 = "Conser2"
[038] :495:CONCAT         v2 = v3 .. v4
[041] :495:CALL           v0:UnbindAction(v2)
[043] :496:GETIMPORT      v0 = game
[044] :496:LOADK          v2 = "ContextActionService"
[047] :496:CALL           v0 = v0:GetService(v2)
[049] :496:GETIMPORT      v5 = script
[051] :496:GETTABLEKS     v3 = v5.Name
[052] :496:LOADK          v4 = "Cons1"
[053] :496:CONCAT         v2 = v3 .. v4
[055] :496:GETGLOBAL      v3 = Conser
[056] :496:LOADB          v4 = false
[058] :496:GETIMPORT      v6 = Enum.KeyCode
[059] :496:GETUPVAL       v10 = u_v1
[061] :496:GETTABLEKS     v9 = v10.Data
[063] :496:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[065] :496:GETTABLEKS     v7 = v8.Value
[066] :496:GETTABLE       v5 = v6[v7]
[069] :496:CALL           v0:BindAction(v2, v3, v4, v5)
[071] :497:GETIMPORT      v0 = print
[072] :497:LOADK          v1 = "BINDING 1"
[073] :497:CALL           v0(v1)
[074] :497:RETURN         return
end
end
end
[076] :498:GETGLOBAL      v1 = DPAD
[078] :498:GETTABLEKS     v0 = v1.Value
[079] :498:LOADN          v1 = 7
[081] :498:JUMPIFNOTLE    if v1 <= v0 then -- goto #145
[083] :498:GETGLOBAL      v1 = DPAD
[085] :498:GETTABLEKS     v0 = v1.Value
[086] :498:LOADN          v1 = 12
[088] :498:JUMPIFNOTLE    if v0 <= v1 then -- goto #145
[089] :498:GETUPVAL       v1 = u_v6
[091] :498:GETTABLEKS     v0 = v1.Value
[093] :498:GETIMPORT      v2 = script
[095] :498:GETTABLEKS     v1 = v2.Name
[097] :498:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #145
[099] :499:GETIMPORT      v0 = game
[100] :499:LOADK          v2 = "ContextActionService"
[103] :499:CALL           v0 = v0:GetService(v2)
[105] :499:GETIMPORT      v5 = script
[107] :499:GETTABLEKS     v3 = v5.Name
[108] :499:LOADK          v4 = "Conser1"
[109] :499:CONCAT         v2 = v3 .. v4
[112] :499:CALL           v0:UnbindAction(v2)
[114] :500:GETIMPORT      v0 = game
[115] :500:LOADK          v2 = "ContextActionService"
[118] :500:CALL           v0 = v0:GetService(v2)
[120] :500:GETIMPORT      v5 = script
[122] :500:GETTABLEKS     v3 = v5.Name
[123] :500:LOADK          v4 = "Cons2"
[124] :500:CONCAT         v2 = v3 .. v4
[126] :500:GETGLOBAL      v3 = Conser
[127] :500:LOADB          v4 = false
[129] :500:GETIMPORT      v6 = Enum.KeyCode
[130] :500:GETUPVAL       v10 = u_v1
[132] :500:GETTABLEKS     v9 = v10.Data
[134] :500:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[136] :500:GETTABLEKS     v7 = v8.Value
[137] :500:GETTABLE       v5 = v6[v7]
[140] :500:CALL           v0:BindAction(v2, v3, v4, v5)
[142] :501:GETIMPORT      v0 = print
[143] :501:LOADK          v1 = "BINDING 2"
[144] :501:CALL           v0(v1)
end
end
end
end
[145] :504:RETURN         return
end
v7 = UpdateDPAD
[791] :1004:SETGLOBAL      UpdateDPAD = v7
[793] :1017:GETTABLEKS     v7 = v5.Value
[795] :1017:GETIMPORT      v9 = script
[797] :1017:GETTABLEKS     v8 = v9.Name
[799] :1017:JUMPIFEQ       if v7 == v8 then -- goto #808
[801] :1017:GETTABLEKS     v7 = v6.Value
[803] :1017:GETIMPORT      v9 = script
[805] :1017:GETTABLEKS     v8 = v9.Name
[807] :1017:JUMPIFNOTEQ    if v7 ~= v8 then -- goto #809
end
[808] :1018:LOADB          v2 = true
end
[810] :1020:GETGLOBAL      v7 = DPAD
[811] :1020:LOADK          v9 = "Value"
[814] :1020:CALL           v7 = v7:GetPropertyChangedSignal(v9)
[815] :1020:DUPCLOSURE     v9 = function()
-- proto pool id: 46
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 4
-- size constants: 1
-- lineinfo gap: 24
-- max stack size: 1
-- is typed: false
[002] :508:GETGLOBAL      v0 = UpdateDPAD
[003] :508:CALL           v0()
[004] :508:RETURN         return
end
[818] :1020:CALL           v7:Connect(v9)
[820] :1021:GETGLOBAL      v7 = UpdateDPAD
[821] :1021:CALL           v7()
[823] :1021:RETURN         return

-- // Function Dumper made by King.Kevin
-- // Script Path: Workspace.ICU_XxWhiteknightxX.Powers.Magma

--[[
Function Dump: UpdateDPAD

Function Upvalues: UpdateDPAD
		1 [boolean] = true
		2 [Instance] = DevilFruit
		3 [Instance] = User_2013261311
		4 [Instance] = DevilFruit2

Function Constants: UpdateDPAD
		1 [string] = DPAD
		2 [string] = Value
		3 [string] = script
		5 [string] = Name
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = Conser2
		11 [string] = UnbindAction
		12 [string] = Cons1
		13 [string] = Conser
		14 [string] = Enum
		15 [string] = KeyCode
		16 [Enum] = KeyCode
		17 [string] = Basic-DPadFn
		18 [string] = Data
		19 [string] = BindAction
		20 [string] = print
		22 [string] = BINDING 1
		23 [string] = Conser1
		24 [string] = Cons2
		25 [string] = BINDING 2

====================================================================================================

Function Dump: Conser

Function Upvalues: Conser
		1 [Instance] = User_2013261311

Function Constants: Conser
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value
		4 [string] = script
		6 [string] = Name
		7 [string] = DPAD
		8 [number] = 1
		9 [string] = Power1
		10 [number] = 2
		11 [string] = Power2
		12 [number] = 3
		13 [string] = Power3
		14 [number] = 4
		15 [string] = Power4
		16 [number] = 5
		17 [string] = Power5
		18 [number] = 6
		19 [string] = Power6
		20 [string] = DevilFruit2
		21 [number] = 7
		22 [string] = Power7
		23 [number] = 8
		24 [string] = Power8
		25 [number] = 9
		26 [string] = Power9
		27 [number] = 10
		28 [string] = Power10
		29 [number] = 11
		30 [string] = Power11
		31 [number] = 12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update

Function Constants: Unknown Name

====================================================================================================

Function Dump: Power6

Function Upvalues: Power6
		1 [Instance] = User_2013261311

Function Constants: Power6
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power6
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power5

Function Upvalues: Power5
		1 [Instance] = User_2013261311

Function Constants: Power5
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power5
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power2

Function Upvalues: Power2
		1 [Instance] = User_2013261311

Function Constants: Power2
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power2
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = UpdateDPAD

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = Power1
		5 [string] = Power2
		6 [string] = Power3
		7 [string] = Power4
		8 [string] = Power5
		9 [string] = Power6
		10 [string] = Power7
		11 [string] = Power8
		12 [string] = Power9
		13 [string] = Power10
		14 [string] = Power11
		15 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = 1
		5 [string] = 7
		6 [string] = Power1
		7 [string] = Power
		8 [string] = 2
		9 [string] = 8
		10 [string] = Power2
		11 [string] = 3
		12 [string] = 9
		13 [string] = Power3
		14 [string] = 4
		15 [string] = 10
		16 [string] = Power4
		17 [string] = 5
		18 [string] = 11
		19 [string] = Power5
		20 [string] = 6
		21 [string] = 12
		22 [string] = Power6

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = End
		10 [EnumItem] = Enum.UserInputState.End
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = Begin
		10 [EnumItem] = Enum.UserInputState.Begin
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: NewSP

Function Upvalues: NewSP

Function Constants: NewSP
		1 [string] = Button1
		2 [string] = Color3
		3 [string] = fromRGB
		5 [string] = ImageColor3
		6 [string] = Button2
		7 [string] = Button3
		8 [string] = Button4
		9 [string] = Button5
		10 [string] = Button6
		11 [string] = Button7
		12 [string] = Button8
		13 [string] = Button9
		14 [string] = Button10
		15 [string] = Button11
		16 [string] = Button12
		17 [string] = SP

====================================================================================================

Function Dump: AbilityActivated

Function Upvalues: AbilityActivated

Function Constants: AbilityActivated
		1 [string] = coroutine
		2 [string] = wrap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = FDP
		5 [string] = Value
		6 [string] = FlightDisablers

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = DFDisabled

====================================================================================================

Function Dump: DFDisabled

Function Upvalues: DFDisabled

Function Constants: DFDisabled
		1 [string] = script
		3 [string] = RemoteEvent
		4 [string] = VTCmel
		5 [string] = Name
		6 [string] = Power2
		7 [string] = DF_Disabled
		8 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button12
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button11
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button10
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button9
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button8
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button7
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button6
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button5
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button4
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button3
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button2
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA4
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA2
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = FDPModule
		2 [string] = AddFDP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Update

Function Upvalues: Update
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Update
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = FindFirstChild
		4 [string] = DevilFruit2
		5 [number] = 1
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = script
		12 [string] = Name
		13 [string] = Power1
		14 [string] = UnbindAction
		15 [string] = Power2
		16 [string] = Power3
		17 [string] = Power4
		18 [string] = Power5
		19 [string] = Power6
		20 [string] = Button1
		21 [string] = Destroy
		22 [string] = Button2
		23 [string] = Button3
		24 [string] = Button4
		25 [string] = Button5
		26 [string] = Button6
		27 [string] = print
		29 [string] =  - Devil Fruit 
		30 [string] =  = 
		31 [string] = Enum
		32 [string] = KeyCode
		33 [Enum] = KeyCode
		34 [string] = Basic_DF1A
		35 [string] = Value
		36 [string] = BindAction
		37 [string] = Basic_DF1B
		38 [string] = Basic_DF1C
		39 [string] = Basic_DF1D
		40 [string] = Basic_DF1E
		41 [string] = Basic_DF1F
		42 [string] = UserInputService
		43 [string] = TouchEnabled
		44 [string] = PlayerGui
		45 [string] = MobileContext
		46 [string] = Button
		47 [string] = Clone
		48 [string] = ContextActions1
		49 [string] = Parent
		50 [string] = MouseButton1Click
		52 [string] = Connect
		58 [number] = 2
		59 [string] = Power7
		60 [string] = Power8
		61 [string] = Power9
		62 [string] = Power10
		63 [string] = Power11
		64 [string] = Power12
		65 [string] = Button7
		66 [string] = Button8
		67 [string] = Button9
		68 [string] = Button10
		69 [string] = Button11
		70 [string] = Button12
		71 [string] = Basic_DF2A
		72 [string] = Basic_DF2B
		73 [string] = Basic_DF2C
		74 [string] = Basic_DF2D
		75 [string] = Basic_DF2E
		76 [string] = Basic_DF2F
		77 [string] = ContextActions2

====================================================================================================

Function Dump: Power4

Function Upvalues: Power4
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power4
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power4
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power3

Function Upvalues: Power3
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power3
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power3
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power1

Function Upvalues: Power1
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power1
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power1
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = AbilityActivated
		11 [string] = Enum
		12 [string] = UserInputState
		13 [string] = Begin
		14 [EnumItem] = Enum.UserInputState.Begin
		15 [string] = CanP1
		16 [string] = P2Charging
		17 [string] = P3Charging
		18 [string] = P4Charging
		19 [string] = P5Charging
		20 [string] = P6Charging
		21 [string] = P1Charging
		22 [string] = GetMouse
		23 [string] = Hit
		24 [string] = Target
		25 [string] = RemoteEvent
		26 [string] = VTCmel
		27 [string] = StartCharging
		28 [string] = ChargeMode
		29 [string] = FireServer
		30 [string] = Character
		31 [string] = Humanoid
		32 [string] = FindFirstChildOfClass
		33 [string] = Right
		34 [string] = Anims
		35 [string] = Punch1RightCharge
		36 [string] = LoadAnimation
		37 [string] = trackA1
		38 [string] = Punch1RightCharged
		39 [string] = trackA2
		40 [string] = Stopped
		42 [string] = Connect
		43 [number] = 0.1
		44 [string] = Play
		45 [string] = Punch1LeftCharge
		46 [string] = trackA3
		47 [string] = Punch1LeftCharged
		48 [string] = trackA4
		50 [string] = wait
		52 [string] = P1Charge
		53 [number] = 1
		54 [string] = ChargeModule
		55 [string] = Name
		56 [string] = 1
		57 [string] = UpdateChargeBar
		58 [string] = End
		59 [EnumItem] = Enum.UserInputState.End
		60 [string] = StopCharging
		61 [string] = Stop
		62 [string] = Punch1RightPunch
		63 [string] = trackA5
		64 [number] = 0.01
		65 [string] = Left
		66 [string] = Punch1LeftPunch
		67 [string] = trackA6
		68 [string] = HumanoidRootPart
		69 [string] = CFrame
		70 [string] = new
		72 [string] = Position
		73 [string] = p
		74 [string] = X
		75 [string] = Y
		76 [string] = Z
		77 [string] = Vector3
		79 [number] = 0.25

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: Workspace.ICU_XxWhiteknightxX.Powers.Magma

--[[
Function Dump: UpdateDPAD

Function Upvalues: UpdateDPAD
		1 [boolean] = true
		2 [Instance] = DevilFruit
		3 [Instance] = User_2013261311
		4 [Instance] = DevilFruit2

Function Constants: UpdateDPAD
		1 [string] = DPAD
		2 [string] = Value
		3 [string] = script
		5 [string] = Name
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = Conser2
		11 [string] = UnbindAction
		12 [string] = Cons1
		13 [string] = Conser
		14 [string] = Enum
		15 [string] = KeyCode
		16 [Enum] = KeyCode
		17 [string] = Basic-DPadFn
		18 [string] = Data
		19 [string] = BindAction
		20 [string] = print
		22 [string] = BINDING 1
		23 [string] = Conser1
		24 [string] = Cons2
		25 [string] = BINDING 2

====================================================================================================

Function Dump: Conser

Function Upvalues: Conser
		1 [Instance] = User_2013261311

Function Constants: Conser
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value
		4 [string] = script
		6 [string] = Name
		7 [string] = DPAD
		8 [number] = 1
		9 [string] = Power1
		10 [number] = 2
		11 [string] = Power2
		12 [number] = 3
		13 [string] = Power3
		14 [number] = 4
		15 [string] = Power4
		16 [number] = 5
		17 [string] = Power5
		18 [number] = 6
		19 [string] = Power6
		20 [string] = DevilFruit2
		21 [number] = 7
		22 [string] = Power7
		23 [number] = 8
		24 [string] = Power8
		25 [number] = 9
		26 [string] = Power9
		27 [number] = 10
		28 [string] = Power10
		29 [number] = 11
		30 [string] = Power11
		31 [number] = 12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update

Function Constants: Unknown Name

====================================================================================================

Function Dump: Power6

Function Upvalues: Power6
		1 [Instance] = User_2013261311

Function Constants: Power6
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power6
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power5

Function Upvalues: Power5
		1 [Instance] = User_2013261311

Function Constants: Power5
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power5
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power2

Function Upvalues: Power2
		1 [Instance] = User_2013261311

Function Constants: Power2
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power2
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = UpdateDPAD

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = Power1
		5 [string] = Power2
		6 [string] = Power3
		7 [string] = Power4
		8 [string] = Power5
		9 [string] = Power6
		10 [string] = Power7
		11 [string] = Power8
		12 [string] = Power9
		13 [string] = Power10
		14 [string] = Power11
		15 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = 1
		5 [string] = 7
		6 [string] = Power1
		7 [string] = Power
		8 [string] = 2
		9 [string] = 8
		10 [string] = Power2
		11 [string] = 3
		12 [string] = 9
		13 [string] = Power3
		14 [string] = 4
		15 [string] = 10
		16 [string] = Power4
		17 [string] = 5
		18 [string] = 11
		19 [string] = Power5
		20 [string] = 6
		21 [string] = 12
		22 [string] = Power6

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = End
		10 [EnumItem] = Enum.UserInputState.End
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = Begin
		10 [EnumItem] = Enum.UserInputState.Begin
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: NewSP

Function Upvalues: NewSP

Function Constants: NewSP
		1 [string] = Button1
		2 [string] = Color3
		3 [string] = fromRGB
		5 [string] = ImageColor3
		6 [string] = Button2
		7 [string] = Button3
		8 [string] = Button4
		9 [string] = Button5
		10 [string] = Button6
		11 [string] = Button7
		12 [string] = Button8
		13 [string] = Button9
		14 [string] = Button10
		15 [string] = Button11
		16 [string] = Button12
		17 [string] = SP

====================================================================================================

Function Dump: AbilityActivated

Function Upvalues: AbilityActivated

Function Constants: AbilityActivated
		1 [string] = coroutine
		2 [string] = wrap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = FDP
		5 [string] = Value
		6 [string] = FlightDisablers

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = DFDisabled

====================================================================================================

Function Dump: DFDisabled

Function Upvalues: DFDisabled

Function Constants: DFDisabled
		1 [string] = script
		3 [string] = RemoteEvent
		4 [string] = VTCmel
		5 [string] = Name
		6 [string] = Power2
		7 [string] = DF_Disabled
		8 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button12
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button11
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button10
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button9
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button8
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button7
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button6
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button5
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button4
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button3
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button2
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA4
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA2
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = FDPModule
		2 [string] = AddFDP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Update

Function Upvalues: Update
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Update
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = FindFirstChild
		4 [string] = DevilFruit2
		5 [number] = 1
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = script
		12 [string] = Name
		13 [string] = Power1
		14 [string] = UnbindAction
		15 [string] = Power2
		16 [string] = Power3
		17 [string] = Power4
		18 [string] = Power5
		19 [string] = Power6
		20 [string] = Button1
		21 [string] = Destroy
		22 [string] = Button2
		23 [string] = Button3
		24 [string] = Button4
		25 [string] = Button5
		26 [string] = Button6
		27 [string] = print
		29 [string] =  - Devil Fruit 
		30 [string] =  = 
		31 [string] = Enum
		32 [string] = KeyCode
		33 [Enum] = KeyCode
		34 [string] = Basic_DF1A
		35 [string] = Value
		36 [string] = BindAction
		37 [string] = Basic_DF1B
		38 [string] = Basic_DF1C
		39 [string] = Basic_DF1D
		40 [string] = Basic_DF1E
		41 [string] = Basic_DF1F
		42 [string] = UserInputService
		43 [string] = TouchEnabled
		44 [string] = PlayerGui
		45 [string] = MobileContext
		46 [string] = Button
		47 [string] = Clone
		48 [string] = ContextActions1
		49 [string] = Parent
		50 [string] = MouseButton1Click
		52 [string] = Connect
		58 [number] = 2
		59 [string] = Power7
		60 [string] = Power8
		61 [string] = Power9
		62 [string] = Power10
		63 [string] = Power11
		64 [string] = Power12
		65 [string] = Button7
		66 [string] = Button8
		67 [string] = Button9
		68 [string] = Button10
		69 [string] = Button11
		70 [string] = Button12
		71 [string] = Basic_DF2A
		72 [string] = Basic_DF2B
		73 [string] = Basic_DF2C
		74 [string] = Basic_DF2D
		75 [string] = Basic_DF2E
		76 [string] = Basic_DF2F
		77 [string] = ContextActions2

====================================================================================================

Function Dump: Power4

Function Upvalues: Power4
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power4
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power4
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power3

Function Upvalues: Power3
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power3
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power3
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power1

Function Upvalues: Power1
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power1
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power1
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = AbilityActivated
		11 [string] = Enum
		12 [string] = UserInputState
		13 [string] = Begin
		14 [EnumItem] = Enum.UserInputState.Begin
		15 [string] = CanP1
		16 [string] = P2Charging
		17 [string] = P3Charging
		18 [string] = P4Charging
		19 [string] = P5Charging
		20 [string] = P6Charging
		21 [string] = P1Charging
		22 [string] = GetMouse
		23 [string] = Hit
		24 [string] = Target
		25 [string] = RemoteEvent
		26 [string] = VTCmel
		27 [string] = StartCharging
		28 [string] = ChargeMode
		29 [string] = FireServer
		30 [string] = Character
		31 [string] = Humanoid
		32 [string] = FindFirstChildOfClass
		33 [string] = Right
		34 [string] = Anims
		35 [string] = Punch1RightCharge
		36 [string] = LoadAnimation
		37 [string] = trackA1
		38 [string] = Punch1RightCharged
		39 [string] = trackA2
		40 [string] = Stopped
		42 [string] = Connect
		43 [number] = 0.1
		44 [string] = Play
		45 [string] = Punch1LeftCharge
		46 [string] = trackA3
		47 [string] = Punch1LeftCharged
		48 [string] = trackA4
		50 [string] = wait
		52 [string] = P1Charge
		53 [number] = 1
		54 [string] = ChargeModule
		55 [string] = Name
		56 [string] = 1
		57 [string] = UpdateChargeBar
		58 [string] = End
		59 [EnumItem] = Enum.UserInputState.End
		60 [string] = StopCharging
		61 [string] = Stop
		62 [string] = Punch1RightPunch
		63 [string] = trackA5
		64 [number] = 0.01
		65 [string] = Left
		66 [string] = Punch1LeftPunch
		67 [string] = trackA6
		68 [string] = HumanoidRootPart
		69 [string] = CFrame
		70 [string] = new
		72 [string] = Position
		73 [string] = p
		74 [string] = X
		75 [string] = Y
		76 [string] = Z
		77 [string] = Vector3
		79 [number] = 0.25

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: Workspace.ICU_XxWhiteknightxX.Powers.Magma

--[[
Function Dump: UpdateDPAD

Function Upvalues: UpdateDPAD
		1 [boolean] = true
		2 [Instance] = DevilFruit
		3 [Instance] = User_2013261311
		4 [Instance] = DevilFruit2

Function Constants: UpdateDPAD
		1 [string] = DPAD
		2 [string] = Value
		3 [string] = script
		5 [string] = Name
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = Conser2
		11 [string] = UnbindAction
		12 [string] = Cons1
		13 [string] = Conser
		14 [string] = Enum
		15 [string] = KeyCode
		16 [Enum] = KeyCode
		17 [string] = Basic-DPadFn
		18 [string] = Data
		19 [string] = BindAction
		20 [string] = print
		22 [string] = BINDING 1
		23 [string] = Conser1
		24 [string] = Cons2
		25 [string] = BINDING 2

====================================================================================================

Function Dump: Conser

Function Upvalues: Conser
		1 [Instance] = User_2013261311

Function Constants: Conser
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value
		4 [string] = script
		6 [string] = Name
		7 [string] = DPAD
		8 [number] = 1
		9 [string] = Power1
		10 [number] = 2
		11 [string] = Power2
		12 [number] = 3
		13 [string] = Power3
		14 [number] = 4
		15 [string] = Power4
		16 [number] = 5
		17 [string] = Power5
		18 [number] = 6
		19 [string] = Power6
		20 [string] = DevilFruit2
		21 [number] = 7
		22 [string] = Power7
		23 [number] = 8
		24 [string] = Power8
		25 [number] = 9
		26 [string] = Power9
		27 [number] = 10
		28 [string] = Power10
		29 [number] = 11
		30 [string] = Power11
		31 [number] = 12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update

Function Constants: Unknown Name

====================================================================================================

Function Dump: Power6

Function Upvalues: Power6
		1 [Instance] = User_2013261311

Function Constants: Power6
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power6
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power5

Function Upvalues: Power5
		1 [Instance] = User_2013261311

Function Constants: Power5
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power5
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power2

Function Upvalues: Power2
		1 [Instance] = User_2013261311

Function Constants: Power2
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power2
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = UpdateDPAD

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = Power1
		5 [string] = Power2
		6 [string] = Power3
		7 [string] = Power4
		8 [string] = Power5
		9 [string] = Power6
		10 [string] = Power7
		11 [string] = Power8
		12 [string] = Power9
		13 [string] = Power10
		14 [string] = Power11
		15 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = 1
		5 [string] = 7
		6 [string] = Power1
		7 [string] = Power
		8 [string] = 2
		9 [string] = 8
		10 [string] = Power2
		11 [string] = 3
		12 [string] = 9
		13 [string] = Power3
		14 [string] = 4
		15 [string] = 10
		16 [string] = Power4
		17 [string] = 5
		18 [string] = 11
		19 [string] = Power5
		20 [string] = 6
		21 [string] = 12
		22 [string] = Power6

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = End
		10 [EnumItem] = Enum.UserInputState.End
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = Begin
		10 [EnumItem] = Enum.UserInputState.Begin
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: NewSP

Function Upvalues: NewSP

Function Constants: NewSP
		1 [string] = Button1
		2 [string] = Color3
		3 [string] = fromRGB
		5 [string] = ImageColor3
		6 [string] = Button2
		7 [string] = Button3
		8 [string] = Button4
		9 [string] = Button5
		10 [string] = Button6
		11 [string] = Button7
		12 [string] = Button8
		13 [string] = Button9
		14 [string] = Button10
		15 [string] = Button11
		16 [string] = Button12
		17 [string] = SP

====================================================================================================

Function Dump: AbilityActivated

Function Upvalues: AbilityActivated

Function Constants: AbilityActivated
		1 [string] = coroutine
		2 [string] = wrap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = FDP
		5 [string] = Value
		6 [string] = FlightDisablers

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = DFDisabled

====================================================================================================

Function Dump: DFDisabled

Function Upvalues: DFDisabled

Function Constants: DFDisabled
		1 [string] = script
		3 [string] = RemoteEvent
		4 [string] = VTCmel
		5 [string] = Name
		6 [string] = Power2
		7 [string] = DF_Disabled
		8 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button12
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button11
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button10
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button9
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button8
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button7
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button6
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button5
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button4
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button3
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button2
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA4
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA2
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = FDPModule
		2 [string] = AddFDP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Update

Function Upvalues: Update
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Update
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = FindFirstChild
		4 [string] = DevilFruit2
		5 [number] = 1
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = script
		12 [string] = Name
		13 [string] = Power1
		14 [string] = UnbindAction
		15 [string] = Power2
		16 [string] = Power3
		17 [string] = Power4
		18 [string] = Power5
		19 [string] = Power6
		20 [string] = Button1
		21 [string] = Destroy
		22 [string] = Button2
		23 [string] = Button3
		24 [string] = Button4
		25 [string] = Button5
		26 [string] = Button6
		27 [string] = print
		29 [string] =  - Devil Fruit 
		30 [string] =  = 
		31 [string] = Enum
		32 [string] = KeyCode
		33 [Enum] = KeyCode
		34 [string] = Basic_DF1A
		35 [string] = Value
		36 [string] = BindAction
		37 [string] = Basic_DF1B
		38 [string] = Basic_DF1C
		39 [string] = Basic_DF1D
		40 [string] = Basic_DF1E
		41 [string] = Basic_DF1F
		42 [string] = UserInputService
		43 [string] = TouchEnabled
		44 [string] = PlayerGui
		45 [string] = MobileContext
		46 [string] = Button
		47 [string] = Clone
		48 [string] = ContextActions1
		49 [string] = Parent
		50 [string] = MouseButton1Click
		52 [string] = Connect
		58 [number] = 2
		59 [string] = Power7
		60 [string] = Power8
		61 [string] = Power9
		62 [string] = Power10
		63 [string] = Power11
		64 [string] = Power12
		65 [string] = Button7
		66 [string] = Button8
		67 [string] = Button9
		68 [string] = Button10
		69 [string] = Button11
		70 [string] = Button12
		71 [string] = Basic_DF2A
		72 [string] = Basic_DF2B
		73 [string] = Basic_DF2C
		74 [string] = Basic_DF2D
		75 [string] = Basic_DF2E
		76 [string] = Basic_DF2F
		77 [string] = ContextActions2

====================================================================================================

Function Dump: Power4

Function Upvalues: Power4
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power4
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power4
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power3

Function Upvalues: Power3
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power3
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power3
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power1

Function Upvalues: Power1
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power1
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power1
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = AbilityActivated
		11 [string] = Enum
		12 [string] = UserInputState
		13 [string] = Begin
		14 [EnumItem] = Enum.UserInputState.Begin
		15 [string] = CanP1
		16 [string] = P2Charging
		17 [string] = P3Charging
		18 [string] = P4Charging
		19 [string] = P5Charging
		20 [string] = P6Charging
		21 [string] = P1Charging
		22 [string] = GetMouse
		23 [string] = Hit
		24 [string] = Target
		25 [string] = RemoteEvent
		26 [string] = VTCmel
		27 [string] = StartCharging
		28 [string] = ChargeMode
		29 [string] = FireServer
		30 [string] = Character
		31 [string] = Humanoid
		32 [string] = FindFirstChildOfClass
		33 [string] = Right
		34 [string] = Anims
		35 [string] = Punch1RightCharge
		36 [string] = LoadAnimation
		37 [string] = trackA1
		38 [string] = Punch1RightCharged
		39 [string] = trackA2
		40 [string] = Stopped
		42 [string] = Connect
		43 [number] = 0.1
		44 [string] = Play
		45 [string] = Punch1LeftCharge
		46 [string] = trackA3
		47 [string] = Punch1LeftCharged
		48 [string] = trackA4
		50 [string] = wait
		52 [string] = P1Charge
		53 [number] = 1
		54 [string] = ChargeModule
		55 [string] = Name
		56 [string] = 1
		57 [string] = UpdateChargeBar
		58 [string] = End
		59 [EnumItem] = Enum.UserInputState.End
		60 [string] = StopCharging
		61 [string] = Stop
		62 [string] = Punch1RightPunch
		63 [string] = trackA5
		64 [number] = 0.01
		65 [string] = Left
		66 [string] = Punch1LeftPunch
		67 [string] = trackA6
		68 [string] = HumanoidRootPart
		69 [string] = CFrame
		70 [string] = new
		72 [string] = Position
		73 [string] = p
		74 [string] = X
		75 [string] = Y
		76 [string] = Z
		77 [string] = Vector3
		79 [number] = 0.25

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: Workspace.ICU_XxWhiteknightxX.Powers.Magma

--[[
Function Dump: UpdateDPAD

Function Upvalues: UpdateDPAD
		1 [boolean] = true
		2 [Instance] = DevilFruit
		3 [Instance] = User_2013261311
		4 [Instance] = DevilFruit2

Function Constants: UpdateDPAD
		1 [string] = DPAD
		2 [string] = Value
		3 [string] = script
		5 [string] = Name
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = Conser2
		11 [string] = UnbindAction
		12 [string] = Cons1
		13 [string] = Conser
		14 [string] = Enum
		15 [string] = KeyCode
		16 [Enum] = KeyCode
		17 [string] = Basic-DPadFn
		18 [string] = Data
		19 [string] = BindAction
		20 [string] = print
		22 [string] = BINDING 1
		23 [string] = Conser1
		24 [string] = Cons2
		25 [string] = BINDING 2

====================================================================================================

Function Dump: Conser

Function Upvalues: Conser
		1 [Instance] = User_2013261311

Function Constants: Conser
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value
		4 [string] = script
		6 [string] = Name
		7 [string] = DPAD
		8 [number] = 1
		9 [string] = Power1
		10 [number] = 2
		11 [string] = Power2
		12 [number] = 3
		13 [string] = Power3
		14 [number] = 4
		15 [string] = Power4
		16 [number] = 5
		17 [string] = Power5
		18 [number] = 6
		19 [string] = Power6
		20 [string] = DevilFruit2
		21 [number] = 7
		22 [string] = Power7
		23 [number] = 8
		24 [string] = Power8
		25 [number] = 9
		26 [string] = Power9
		27 [number] = 10
		28 [string] = Power10
		29 [number] = 11
		30 [string] = Power11
		31 [number] = 12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update

Function Constants: Unknown Name

====================================================================================================

Function Dump: Power6

Function Upvalues: Power6
		1 [Instance] = User_2013261311

Function Constants: Power6
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power6
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power5

Function Upvalues: Power5
		1 [Instance] = User_2013261311

Function Constants: Power5
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power5
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = Create
		18 [string] = FireServer

====================================================================================================

Function Dump: Power2

Function Upvalues: Power2
		1 [Instance] = User_2013261311

Function Constants: Power2
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power2
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = RemoteEvent
		16 [string] = VTCmel
		17 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = UpdateDPAD

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = Power1
		5 [string] = Power2
		6 [string] = Power3
		7 [string] = Power4
		8 [string] = Power5
		9 [string] = Power6
		10 [string] = Power7
		11 [string] = Power8
		12 [string] = Power9
		13 [string] = Power10
		14 [string] = Power11
		15 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Name
		4 [string] = 1
		5 [string] = 7
		6 [string] = Power1
		7 [string] = Power
		8 [string] = 2
		9 [string] = 8
		10 [string] = Power2
		11 [string] = 3
		12 [string] = 9
		13 [string] = Power3
		14 [string] = 4
		15 [string] = 10
		16 [string] = Power4
		17 [string] = 5
		18 [string] = 11
		19 [string] = Power5
		20 [string] = 6
		21 [string] = 12
		22 [string] = Power6

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = End
		10 [EnumItem] = Enum.UserInputState.End
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = Power1
		4 [string] = script
		6 [string] = Name
		7 [string] = Enum
		8 [string] = UserInputState
		9 [string] = Begin
		10 [EnumItem] = Enum.UserInputState.Begin
		11 [string] = Button2
		12 [string] = Power2
		13 [string] = Button3
		14 [string] = Power3
		15 [string] = Button4
		16 [string] = Power4
		17 [string] = Button5
		18 [string] = Power5
		19 [string] = Button6
		20 [string] = Power6
		21 [string] = Button7
		22 [string] = Power7
		23 [string] = Button8
		24 [string] = Power8
		25 [string] = Button9
		26 [string] = Power9
		27 [string] = Button10
		28 [string] = Power10
		29 [string] = Button11
		30 [string] = Power11
		31 [string] = Button12
		32 [string] = Power12

====================================================================================================

Function Dump: NewSP

Function Upvalues: NewSP

Function Constants: NewSP
		1 [string] = Button1
		2 [string] = Color3
		3 [string] = fromRGB
		5 [string] = ImageColor3
		6 [string] = Button2
		7 [string] = Button3
		8 [string] = Button4
		9 [string] = Button5
		10 [string] = Button6
		11 [string] = Button7
		12 [string] = Button8
		13 [string] = Button9
		14 [string] = Button10
		15 [string] = Button11
		16 [string] = Button12
		17 [string] = SP

====================================================================================================

Function Dump: AbilityActivated

Function Upvalues: AbilityActivated

Function Constants: AbilityActivated
		1 [string] = coroutine
		2 [string] = wrap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = FDP
		5 [string] = Value
		6 [string] = FlightDisablers

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = DFDisabled

====================================================================================================

Function Dump: DFDisabled

Function Upvalues: DFDisabled

Function Constants: DFDisabled
		1 [string] = script
		3 [string] = RemoteEvent
		4 [string] = VTCmel
		5 [string] = Name
		6 [string] = Power2
		7 [string] = DF_Disabled
		8 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button12
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button11
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button10
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button9
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button8
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button7
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button6
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button5
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button4
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button3
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button2
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = SP
		2 [string] = Button1
		3 [string] = NewSP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA4
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = P1Charging
		2 [string] = trackA2
		3 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
		1 [string] = FDPModule
		2 [string] = AddFDP

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit2
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
		1 [function] = Update
		2 [Instance] = User_2013261311

Function Constants: Unknown Name
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = Value

====================================================================================================

Function Dump: Update

Function Upvalues: Update
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Update
		1 [string] = Data
		2 [string] = DevilFruit
		3 [string] = FindFirstChild
		4 [string] = DevilFruit2
		5 [number] = 1
		6 [string] = game
		7 [Instance] = Ugc
		8 [string] = ContextActionService
		9 [string] = GetService
		10 [string] = script
		12 [string] = Name
		13 [string] = Power1
		14 [string] = UnbindAction
		15 [string] = Power2
		16 [string] = Power3
		17 [string] = Power4
		18 [string] = Power5
		19 [string] = Power6
		20 [string] = Button1
		21 [string] = Destroy
		22 [string] = Button2
		23 [string] = Button3
		24 [string] = Button4
		25 [string] = Button5
		26 [string] = Button6
		27 [string] = print
		29 [string] =  - Devil Fruit 
		30 [string] =  = 
		31 [string] = Enum
		32 [string] = KeyCode
		33 [Enum] = KeyCode
		34 [string] = Basic_DF1A
		35 [string] = Value
		36 [string] = BindAction
		37 [string] = Basic_DF1B
		38 [string] = Basic_DF1C
		39 [string] = Basic_DF1D
		40 [string] = Basic_DF1E
		41 [string] = Basic_DF1F
		42 [string] = UserInputService
		43 [string] = TouchEnabled
		44 [string] = PlayerGui
		45 [string] = MobileContext
		46 [string] = Button
		47 [string] = Clone
		48 [string] = ContextActions1
		49 [string] = Parent
		50 [string] = MouseButton1Click
		52 [string] = Connect
		58 [number] = 2
		59 [string] = Power7
		60 [string] = Power8
		61 [string] = Power9
		62 [string] = Power10
		63 [string] = Power11
		64 [string] = Power12
		65 [string] = Button7
		66 [string] = Button8
		67 [string] = Button9
		68 [string] = Button10
		69 [string] = Button11
		70 [string] = Button12
		71 [string] = Basic_DF2A
		72 [string] = Basic_DF2B
		73 [string] = Basic_DF2C
		74 [string] = Basic_DF2D
		75 [string] = Basic_DF2E
		76 [string] = Basic_DF2F
		77 [string] = ContextActions2

====================================================================================================

Function Dump: Power4

Function Upvalues: Power4
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power4
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power4
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power3

Function Upvalues: Power3
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power3
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power3
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = Enum
		11 [string] = UserInputState
		12 [string] = Begin
		13 [EnumItem] = Enum.UserInputState.Begin
		14 [string] = AbilityActivated
		15 [string] = GetMouse
		16 [string] = Hit
		17 [string] = Target
		18 [string] = RemoteEvent
		19 [string] = VTCmel
		20 [string] = Create
		21 [string] = FireServer

====================================================================================================

Function Dump: Power1

Function Upvalues: Power1
		1 [Instance] = User_2013261311
		2 [Instance] = ICU_XxWhiteknightxX

Function Constants: Power1
		1 [string] = script
		3 [string] = Parent
		4 [string] = DF_Disabled
		5 [string] = Value
		6 [string] = Data
		7 [string] = Power1
		8 [string] = StatType
		9 [string] = FindFirstChild
		10 [string] = AbilityActivated
		11 [string] = Enum
		12 [string] = UserInputState
		13 [string] = Begin
		14 [EnumItem] = Enum.UserInputState.Begin
		15 [string] = CanP1
		16 [string] = P2Charging
		17 [string] = P3Charging
		18 [string] = P4Charging
		19 [string] = P5Charging
		20 [string] = P6Charging
		21 [string] = P1Charging
		22 [string] = GetMouse
		23 [string] = Hit
		24 [string] = Target
		25 [string] = RemoteEvent
		26 [string] = VTCmel
		27 [string] = StartCharging
		28 [string] = ChargeMode
		29 [string] = FireServer
		30 [string] = Character
		31 [string] = Humanoid
		32 [string] = FindFirstChildOfClass
		33 [string] = Right
		34 [string] = Anims
		35 [string] = Punch1RightCharge
		36 [string] = LoadAnimation
		37 [string] = trackA1
		38 [string] = Punch1RightCharged
		39 [string] = trackA2
		40 [string] = Stopped
		42 [string] = Connect
		43 [number] = 0.1
		44 [string] = Play
		45 [string] = Punch1LeftCharge
		46 [string] = trackA3
		47 [string] = Punch1LeftCharged
		48 [string] = trackA4
		50 [string] = wait
		52 [string] = P1Charge
		53 [number] = 1
		54 [string] = ChargeModule
		55 [string] = Name
		56 [string] = 1
		57 [string] = UpdateChargeBar
		58 [string] = End
		59 [EnumItem] = Enum.UserInputState.End
		60 [string] = StopCharging
		61 [string] = Stop
		62 [string] = Punch1RightPunch
		63 [string] = trackA5
		64 [number] = 0.01
		65 [string] = Left
		66 [string] = Punch1LeftPunch
		67 [string] = trackA6
		68 [string] = HumanoidRootPart
		69 [string] = CFrame
		70 [string] = new
		72 [string] = Position
		73 [string] = p
		74 [string] = X
		75 [string] = Y
		76 [string] = Z
		77 [string] = Vector3
		79 [number] = 0.25

====================================================================================================
]]
