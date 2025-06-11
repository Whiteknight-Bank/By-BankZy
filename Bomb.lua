-- 𝓓𝓮𝓬𝓸𝓶𝓹𝓲𝓵𝓮𝓭 𝓫𝔂 𝓯𝓻𝓮𝓪𝓴𝔂 𝓭𝓮𝓬𝓸𝓶𝓹𝓲𝓵𝓮𝓻
-- USED GLOBALS: script, FinishedLoading, DevilFruit, DevilFruit2, VTCcpkghc, ChargeModule, ChargeBar1, ChargeBar2, ChargeBar3, ChargeBar4, ChargeBar5, ChargeBar6, status, ChargeMode, CanP1, P1Charging, P1Charge, CanP2, P2Charging, P2Charge, CanP3, P3Charging, P3Charge, CanP4, P4Charging, P4Charge, CanP5, P5Charging, P5Charge, CanP6, P6Charging, P6Charge, FDPModule, FlightDisablers, AbilityActivated, trackA1, trackA2, trackA3, trackA4, trackA5, trackA6, Power1, Power2, trackB2, trackB4, trackB5, trackB6, Power3, P4Looker, trackB3, trackB1, Power4, Power5, Power6, Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9, Button10, Button11, Button12, SP, NewSP, DPAD, Conser, UpdateDPAD.
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
[040] :008:GETIMPORT      v1 = wait
[041] :008:CALL           v1()
[043] :008:GETIMPORT      v1 = workspace
[044] :008:LOADK          v3 = "UserData"
[047] :008:CALL           v1 = v1:FindFirstChild(v3)
[048] :008:JUMPIF         if not v1 then -- goto #49
end
[049] :008:JUMPBACK       -- jump back to #39
[051] :009:GETIMPORT      v1 = wait
[052] :009:CALL           v1()
[054] :009:GETIMPORT      v2 = workspace
[056] :009:GETTABLEKS     v1 = v2.UserData
[057] :009:LOADK          v4 = "User_"
[059] :009:GETTABLEKS     v5 = v0.UserId
[060] :009:CONCAT         v3 = v4 .. v5
[063] :009:CALL           v1 = v1:FindFirstChild(v3)
[064] :009:JUMPIF         if not v1 then -- goto #65
end
[065] :009:JUMPBACK       -- jump back to #50
[067] :010:GETIMPORT      v2 = workspace
[069] :010:GETTABLEKS     v1 = v2.UserData
[070] :010:LOADK          v4 = "User_"
[072] :010:GETTABLEKS     v5 = v0.UserId
[073] :010:CONCAT         v3 = v4 .. v5
[076] :010:CALL           v1 = v1:FindFirstChild(v3)
[078] :011:GETIMPORT      v2 = wait
[079] :011:CALL           v2()
[080] :011:LOADK          v4 = "Data"
[083] :011:CALL           v2 = v2:FindFirstChild(v4)
[084] :011:JUMPIF         if not v2 then -- goto #85
end
[085] :011:JUMPBACK       -- jump back to #77
[087] :012:GETIMPORT      v2 = wait
[088] :012:CALL           v2()
[090] :012:GETTABLEKS     v2 = v1.Data
[091] :012:LOADK          v4 = "MeleeLevel"
[094] :012:CALL           v2 = v2:FindFirstChild(v4)
[095] :012:JUMPIF         if not v2 then -- goto #96
end
[096] :012:JUMPBACK       -- jump back to #86
[098] :013:GETIMPORT      v2 = wait
[099] :013:CALL           v2()
[101] :013:GETTABLEKS     v2 = v1.Data
[102] :013:LOADK          v4 = "DefenseLevel"
[105] :013:CALL           v2 = v2:FindFirstChild(v4)
[106] :013:JUMPIF         if not v2 then -- goto #107
end
[107] :013:JUMPBACK       -- jump back to #97
[109] :014:GETTABLEKS     v2 = v1.Data
[110] :014:LOADK          v4 = "DefenseLevel"
[113] :014:CALL           v2 = v2:FindFirstChild(v4)
[115] :015:GETIMPORT      v3 = wait
[116] :015:CALL           v3()
[118] :015:GETTABLEKS     v3 = v1.Data
[119] :015:LOADK          v5 = "DevilFruit"
[122] :015:CALL           v3 = v3:FindFirstChild(v5)
[123] :015:JUMPIF         if not v3 then -- goto #124
end
[124] :015:JUMPBACK       -- jump back to #114
[126] :016:GETIMPORT      v3 = wait
[127] :016:CALL           v3()
[129] :016:GETTABLEKS     v3 = v1.Data
[130] :016:LOADK          v5 = "DevilFruit2"
[133] :016:CALL           v3 = v3:FindFirstChild(v5)
[134] :016:JUMPIF         if not v3 then -- goto #135
end
[135] :016:JUMPBACK       -- jump back to #125
[137] :017:GETIMPORT      v3 = wait
[138] :017:CALL           v3()
[139] :017:LOADK          v5 = "FinishedLoading"
[142] :017:CALL           v3 = v3:FindFirstChild(v5)
[143] :017:JUMPIF         if not v3 then -- goto #144
end
[144] :017:JUMPBACK       -- jump back to #136
[145] :018:LOADK          v5 = "FinishedLoading"
[148] :018:CALL           v3 = v3:FindFirstChild(v5)
[150] :018:SETGLOBAL      FinishedLoading = v3
[152] :019:GETIMPORT      v3 = wait
[153] :019:CALL           v3()
[155] :019:GETGLOBAL      v4 = FinishedLoading
[157] :019:GETTABLEKS     v3 = v4.Value
[159] :019:JUMPXEQKB      if v3 ~= true then -- goto #161
[160] :019:JUMPBACK       -- jump back to #151
end
[162] :020:GETTABLEKS     v3 = v1.Data
[163] :020:LOADK          v5 = "DevilFruit"
[166] :020:CALL           v3 = v3:FindFirstChild(v5)
[168] :020:SETGLOBAL      DevilFruit = v3
[170] :021:GETTABLEKS     v3 = v1.Data
[171] :021:LOADK          v5 = "DevilFruit2"
[174] :021:CALL           v3 = v3:FindFirstChild(v5)
[176] :021:SETGLOBAL      DevilFruit2 = v3
[178] :022:GETIMPORT      v5 = script
[180] :022:GETTABLEKS     v4 = v5.RemoteEvent
[182] :022:GETTABLEKS     v3 = v4.RemoteFunction
[185] :022:CALL           v3 = v3:InvokeServer()
[187] :022:SETGLOBAL      VTCcpkghc = v3
[189] :024:GETIMPORT      v4 = script
[191] :024:GETTABLEKS     v3 = v4.Parent
[192] :024:LOADK          v5 = "ChargeModule"
[195] :024:CALL           v3 = v3:FindFirstChild(v5)
[196] :024:JUMPIF         if not v3 then -- goto #209
[198] :025:GETIMPORT      v3 = wait
[199] :025:CALL           v3()
[201] :025:GETIMPORT      v4 = script
[203] :025:GETTABLEKS     v3 = v4.Parent
[204] :025:LOADK          v5 = "ChargeModule"
[207] :025:CALL           v3 = v3:FindFirstChild(v5)
[208] :025:JUMPIF         if not v3 then -- goto #209
end
end
[209] :025:JUMPBACK       -- jump back to #197
[211] :027:GETIMPORT      v3 = require
[213] :027:GETIMPORT      v6 = script
[215] :027:GETTABLEKS     v5 = v6.Parent
[217] :027:GETTABLEKS     v4 = v5.ChargeModule
[218] :027:CALL           v3 = v3(v4)
[220] :027:SETGLOBAL      ChargeModule = v3
[221] :028:LOADNIL        v3 = nil
[223] :028:SETGLOBAL      ChargeBar1 = v3
[224] :029:LOADNIL        v3 = nil
[226] :029:SETGLOBAL      ChargeBar2 = v3
[227] :030:LOADNIL        v3 = nil
[229] :030:SETGLOBAL      ChargeBar3 = v3
[230] :031:LOADNIL        v3 = nil
[232] :031:SETGLOBAL      ChargeBar4 = v3
[233] :032:LOADNIL        v3 = nil
[235] :032:SETGLOBAL      ChargeBar5 = v3
[236] :033:LOADNIL        v3 = nil
[238] :033:SETGLOBAL      ChargeBar6 = v3
[239] :035:LOADB          v3 = false
[240] :036:LOADB          v4 = true
[242] :036:SETGLOBAL      status = v4
[243] :038:LOADK          v4 = "Right"
[245] :038:SETGLOBAL      ChargeMode = v4
[246] :040:LOADB          v4 = true
[248] :040:SETGLOBAL      CanP1 = v4
[249] :041:LOADB          v4 = false
[251] :041:SETGLOBAL      P1Charging = v4
[252] :042:LOADN          v4 = 4
[254] :042:SETGLOBAL      P1Charge = v4
[255] :044:LOADB          v4 = true
[257] :044:SETGLOBAL      CanP2 = v4
[258] :045:LOADB          v4 = false
[260] :045:SETGLOBAL      P2Charging = v4
[261] :046:LOADN          v4 = 4
[263] :046:SETGLOBAL      P2Charge = v4
[264] :048:LOADB          v4 = true
[266] :048:SETGLOBAL      CanP3 = v4
[267] :049:LOADB          v4 = false
[269] :049:SETGLOBAL      P3Charging = v4
[270] :050:LOADN          v4 = 4
[272] :050:SETGLOBAL      P3Charge = v4
[273] :052:LOADB          v4 = true
[275] :052:SETGLOBAL      CanP4 = v4
[276] :053:LOADB          v4 = false
[278] :053:SETGLOBAL      P4Charging = v4
[279] :054:LOADN          v4 = 4
[281] :054:SETGLOBAL      P4Charge = v4
[282] :056:LOADB          v4 = true
[284] :056:SETGLOBAL      CanP5 = v4
[285] :057:LOADB          v4 = false
[287] :057:SETGLOBAL      P5Charging = v4
[288] :058:LOADN          v4 = 4
[290] :058:SETGLOBAL      P5Charge = v4
[291] :060:LOADB          v4 = true
[293] :060:SETGLOBAL      CanP6 = v4
[294] :061:LOADB          v4 = false
[296] :061:SETGLOBAL      P6Charging = v4
[297] :062:LOADN          v4 = 4
[299] :062:SETGLOBAL      P6Charge = v4
[301] :064:GETIMPORT      v4 = wait
[302] :064:CALL           v4()
[304] :064:GETIMPORT      v4 = workspace
[305] :064:LOADK          v6 = "ResourceHolder"
[308] :064:CALL           v4 = v4:FindFirstChild(v6)
[309] :064:JUMPIF         if not v4 then -- goto #310
end
[310] :064:JUMPBACK       -- jump back to #300
[312] :065:GETIMPORT      v4 = wait
[313] :065:CALL           v4()
[315] :065:GETIMPORT      v5 = workspace
[317] :065:GETTABLEKS     v4 = v5.ResourceHolder
[318] :065:LOADK          v7 = "Resources_"
[320] :065:GETTABLEKS     v8 = v0.UserId
[321] :065:CONCAT         v6 = v7 .. v8
[324] :065:CALL           v4 = v4:FindFirstChild(v6)
[325] :065:JUMPIF         if not v4 then -- goto #326
end
[326] :065:JUMPBACK       -- jump back to #311
[328] :066:GETIMPORT      v5 = workspace
[330] :066:GETTABLEKS     v4 = v5.ResourceHolder
[331] :066:LOADK          v7 = "Resources_"
[333] :066:GETTABLEKS     v8 = v0.UserId
[334] :066:CONCAT         v6 = v7 .. v8
[337] :066:CALL           v4 = v4:FindFirstChild(v6)
[339] :068:GETIMPORT      v7 = script
[341] :068:GETTABLEKS     v6 = v7.Parent
[343] :068:GETTABLEKS     v5 = v6.Parent
[344] :068:LOADK          v7 = "FDP"
[347] :068:CALL           v5 = v5:FindFirstChild(v7)
[348] :068:JUMPIF         if not v5 then -- goto #363
[350] :069:GETIMPORT      v5 = wait
[351] :069:CALL           v5()
[353] :069:GETIMPORT      v7 = script
[355] :069:GETTABLEKS     v6 = v7.Parent
[357] :069:GETTABLEKS     v5 = v6.Parent
[358] :069:LOADK          v7 = "FDP"
[361] :069:CALL           v5 = v5:FindFirstChild(v7)
[362] :069:JUMPIF         if not v5 then -- goto #363
end
end
[363] :069:JUMPBACK       -- jump back to #349
[365] :071:GETIMPORT      v5 = require
[367] :071:GETIMPORT      v10 = script
[369] :071:GETTABLEKS     v9 = v10.Parent
[371] :071:GETTABLEKS     v8 = v9.Parent
[373] :071:GETTABLEKS     v7 = v8.FDP
[375] :071:GETTABLEKS     v6 = v7.FDPModule
[376] :071:CALL           v5 = v5(v6)
[378] :071:SETGLOBAL      FDPModule = v5
[380] :072:GETIMPORT      v8 = script
[382] :072:GETTABLEKS     v7 = v8.Parent
[384] :072:GETTABLEKS     v6 = v7.Parent
[386] :072:GETTABLEKS     v5 = v6.FDP
[387] :072:LOADK          v7 = "Value"
[390] :072:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[391] :072:DUPCLOSURE     v7 = function()
-- proto pool id: 0
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 13
-- size constants: 6
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :073:GETIMPORT      v4 = script
[004] :073:GETTABLEKS     v3 = v4.Parent
[006] :073:GETTABLEKS     v2 = v3.Parent
[008] :073:GETTABLEKS     v1 = v2.FDP
[010] :073:GETTABLEKS     v0 = v1.Value
[012] :073:SETGLOBAL      FlightDisablers = v0
[013] :075:RETURN         return
end
[394] :072:CALL           v5:Connect(v7)
[395] :076:LOADN          v5 = 0
[397] :076:SETGLOBAL      FlightDisablers = v5
[398] :077:DUPCLOSURE     
local function AbilityActivated()
-- proto pool id: 2
-- num upvalues: 0
-- num inner protos: 1
-- size instructions: 7
-- size constants: 4
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :078:GETIMPORT      v0 = coroutine.wrap
[003] :078:DUPCLOSURE     v1 = function()
-- proto pool id: 1
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 7
-- size constants: 2
-- lineinfo gap: 24
-- max stack size: 3
-- is typed: false
[002] :079:GETGLOBAL      v0 = FDPModule
[003] :079:LOADN          v2 = 3
[006] :079:CALL           v0:AddFDP(v2)
[007] :080:RETURN         return
end
[004] :078:CALL           v0 = v0(v1)
[005] :081:MOVE           v1 = v0
[006] :081:CALL           v1()
[007] :082:RETURN         return
end
v5 = AbilityActivated
[400] :077:SETGLOBAL      AbilityActivated = v5
[401] :084:DUPCLOSURE     
local function Power1(p1, p2, p3)
-- proto pool id: 5
-- num upvalues: 2
-- num inner protos: 2
-- size instructions: 452
-- size constants: 80
-- lineinfo gap: 24
-- max stack size: 17
-- is typed: false
[002] :085:GETIMPORT      v4 = script
[004] :085:GETTABLEKS     v3 = v4.Parent
[006] :085:GETTABLEKS     v2 = v3.Parent
[008] :085:GETTABLEKS     v1 = v2.DF_Disabled
[010] :085:GETTABLEKS     v0 = v1.Value
[012] :085:JUMPXEQKB      if v0 == true then -- goto #14
[013] :085:RETURN         return
end
[015] :086:GETIMPORT      v4 = script
[017] :086:GETTABLEKS     v3 = v4.Parent
[019] :086:GETTABLEKS     v2 = v3.Parent
[021] :086:GETTABLEKS     v1 = v2.Projecting
[023] :086:GETTABLEKS     v0 = v1.Value
[025] :086:JUMPXEQKB      if v0 == true then -- goto #27
[026] :086:RETURN         return
end
[027] :087:GETUPVAL       v2 = u_v1
[029] :087:GETTABLEKS     v1 = v2.Data
[031] :087:GETIMPORT      v6 = script
[033] :087:GETTABLEKS     v5 = v6.Power1
[035] :087:GETTABLEKS     v4 = v5.StatType
[037] :087:GETTABLEKS     v3 = v4.Value
[040] :087:CALL           v1 = v1:FindFirstChild(v3)
[042] :087:GETTABLEKS     v0 = v1.Value
[044] :088:GETIMPORT      v2 = script
[045] :088:LOADK          v4 = "Power1"
[048] :088:CALL           v2 = v2:FindFirstChild(v4)
[050] :088:GETTABLEKS     v1 = v2.Value
[052] :088:JUMPIFNOTLT    if v0 < v1 then -- goto #54
[053] :088:RETURN         return
end
[055] :089:GETGLOBAL      v1 = AbilityActivated
[056] :089:CALL           v1()
[058] :090:GETIMPORT      v1 = Enum.UserInputState.Begin
[060] :090:JUMPIFNOTEQ    if p2 ~= v1 then -- goto #250
[062] :090:GETGLOBAL      v1 = CanP1
[064] :090:JUMPXEQKB      if v1 == true then -- goto #250
[066] :092:GETGLOBAL      v1 = P2Charging
[068] :092:JUMPXEQKB      if v1 ~= true then -- goto #85
[070] :093:GETGLOBAL      v1 = P3Charging
[072] :093:JUMPXEQKB      if v1 ~= true then -- goto #85
[074] :094:GETGLOBAL      v1 = P4Charging
[076] :094:JUMPXEQKB      if v1 ~= true then -- goto #85
[078] :095:GETGLOBAL      v1 = P5Charging
[080] :095:JUMPXEQKB      if v1 ~= true then -- goto #85
[082] :096:GETGLOBAL      v1 = P6Charging
[084] :096:JUMPXEQKB      if v1 == true then -- goto #86
end
end
end
end
[085] :096:RETURN         return
end
[087] :098:GETGLOBAL      v1 = P1Charging
[089] :098:JUMPXEQKB      if v1 == false then -- goto #452
[090] :099:LOADB          v1 = true
[092] :099:SETGLOBAL      P1Charging = v1
[093] :100:GETUPVAL       v1 = u_v0
[096] :100:CALL           v1 = v1:GetMouse()
[098] :101:GETTABLEKS     v2 = v1.Hit
[100] :102:GETTABLEKS     v3 = v1.Target
[102] :103:GETIMPORT      v5 = script
[104] :103:GETTABLEKS     v4 = v5.RemoteEvent
[106] :103:GETGLOBAL      v6 = VTCcpkghc
[107] :103:MOVE           v7 = p1
[108] :103:LOADK          v8 = "StartCharging"
[109] :103:MOVE           v9 = v2
[110] :103:MOVE           v10 = v3
[111] :103:LOADNIL        v11 = nil
[113] :103:GETGLOBAL      v12 = ChargeMode
[116] :103:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11, v12)
[117] :104:GETUPVAL       v5 = u_v0
[119] :104:GETTABLEKS     v4 = v5.Character
[120] :104:LOADK          v6 = "Humanoid"
[123] :104:CALL           v4 = v4:FindFirstChildOfClass(v6)
[124] :104:JUMPIFNOT      if v4 then -- goto #212
[125] :105:GETUPVAL       v5 = u_v0
[127] :105:GETTABLEKS     v4 = v5.Character
[128] :105:LOADK          v6 = "Humanoid"
[131] :105:CALL           v4 = v4:FindFirstChildOfClass(v6)
[133] :106:GETGLOBAL      v5 = ChargeMode
[135] :106:JUMPXEQKS      if v5 == "Right" then -- goto #175
[137] :107:GETIMPORT      v9 = script
[139] :107:GETTABLEKS     v8 = v9.Anims
[141] :107:GETTABLEKS     v7 = v8.Punch1RightCharge
[144] :107:CALL           v5 = v5:LoadAnimation(v7)
[146] :107:SETGLOBAL      trackA1 = v5
[148] :108:GETIMPORT      v9 = script
[150] :108:GETTABLEKS     v8 = v9.Anims
[152] :108:GETTABLEKS     v7 = v8.Punch1RightCharged
[155] :108:CALL           v5 = v5:LoadAnimation(v7)
[157] :108:SETGLOBAL      trackA2 = v5
[159] :109:GETGLOBAL      v6 = trackA1
[161] :109:GETTABLEKS     v5 = v6.Stopped
[162] :109:DUPCLOSURE     v7 = function()
-- proto pool id: 3
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :110:GETGLOBAL      v0 = P1Charging
[004] :110:JUMPXEQKB      if v0 == true then -- goto #10
[006] :111:GETGLOBAL      v0 = trackA2
[009] :111:CALL           v0:Play()
end
[010] :113:RETURN         return
end
[165] :109:CALL           v5:Connect(v7)
[167] :114:GETGLOBAL      v5 = trackA1
[168] :114:LOADK          v7 = 0.1
[169] :114:LOADN          v8 = 1
[170] :114:LOADN          v9 = 4
[173] :114:CALL           v5:Play(v7, v8, v9)
[174] :114:JUMP           -- jump to #212
end
[176] :116:GETIMPORT      v9 = script
[178] :116:GETTABLEKS     v8 = v9.Anims
[180] :116:GETTABLEKS     v7 = v8.Punch1LeftCharge
[183] :116:CALL           v5 = v5:LoadAnimation(v7)
[185] :116:SETGLOBAL      trackA3 = v5
[187] :117:GETIMPORT      v9 = script
[189] :117:GETTABLEKS     v8 = v9.Anims
[191] :117:GETTABLEKS     v7 = v8.Punch1LeftCharged
[194] :117:CALL           v5 = v5:LoadAnimation(v7)
[196] :117:SETGLOBAL      trackA4 = v5
[198] :118:GETGLOBAL      v6 = trackA3
[200] :118:GETTABLEKS     v5 = v6.Stopped
[201] :118:DUPCLOSURE     v7 = function()
-- proto pool id: 4
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :119:GETGLOBAL      v0 = P1Charging
[004] :119:JUMPXEQKB      if v0 == true then -- goto #10
[006] :120:GETGLOBAL      v0 = trackA4
[009] :120:CALL           v0:Play()
end
[010] :122:RETURN         return
end
[204] :118:CALL           v5:Connect(v7)
[206] :123:GETGLOBAL      v5 = trackA3
[207] :123:LOADK          v7 = 0.1
[208] :123:LOADN          v8 = 1
[209] :123:LOADN          v9 = 4
[212] :123:CALL           v5:Play(v7, v8, v9)
[214] :127:GETIMPORT      v4 = wait
[215] :127:CALL           v4()
[217] :128:GETGLOBAL      v4 = P1Charge
[218] :128:LOADN          v5 = 100
[220] :128:JUMPIFNOTLT    if v4 < v5 then -- goto #244
[222] :128:GETGLOBAL      v4 = CanP1
[224] :128:JUMPXEQKB      if v4 == true then -- goto #244
[226] :129:GETGLOBAL      v5 = P1Charge
[227] :129:ADDK           v4 = v5 + 1
[229] :129:SETGLOBAL      P1Charge = v4
[231] :130:GETGLOBAL      v4 = ChargeModule
[233] :130:GETIMPORT      v9 = script
[235] :130:GETTABLEKS     v7 = v9.Name
[236] :130:LOADK          v8 = 1
[237] :130:CONCAT         v6 = v7 .. v8
[239] :130:GETGLOBAL      v7 = P1Charge
[240] :130:LOADN          v8 = 100
[243] :130:CALL           v4:UpdateChargeBar(v6, v7, v8)
end
end
[245] :132:GETGLOBAL      v4 = P1Charging
[247] :132:JUMPXEQKB      if v4 ~= false then -- goto #452
[248] :132:JUMPBACK       -- jump back to #213
[249] :132:RETURN         return
end
end
[251] :134:GETIMPORT      v1 = Enum.UserInputState.End
[253] :134:JUMPIFNOTEQ    if p2 ~= v1 then -- goto #452
[255] :134:GETGLOBAL      v1 = CanP1
[257] :134:JUMPXEQKB      if v1 == true then -- goto #452
[259] :135:GETGLOBAL      v1 = P1Charging
[261] :135:JUMPXEQKB      if v1 == true then -- goto #452
[262] :136:LOADB          v1 = false
[264] :136:SETGLOBAL      P1Charging = v1
[265] :137:GETUPVAL       v1 = u_v0
[268] :137:CALL           v1 = v1:GetMouse()
[270] :138:GETTABLEKS     v2 = v1.Hit
[272] :139:GETTABLEKS     v3 = v1.Target
[274] :140:GETIMPORT      v5 = script
[276] :140:GETTABLEKS     v4 = v5.RemoteEvent
[278] :140:GETGLOBAL      v6 = VTCcpkghc
[279] :140:MOVE           v7 = p1
[280] :140:LOADK          v8 = "StopCharging"
[281] :140:MOVE           v9 = v2
[282] :140:MOVE           v10 = v3
[284] :140:GETGLOBAL      v11 = P1Charge
[287] :140:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11)
[288] :141:LOADB          v4 = false
[290] :141:SETGLOBAL      CanP1 = v4
[291] :142:LOADN          v4 = 4
[293] :142:SETGLOBAL      P1Charge = v4
[295] :143:GETGLOBAL      v4 = trackA1
[297] :143:JUMPXEQKNIL    if v4 ~= nil then -- goto #303
[299] :143:GETGLOBAL      v4 = trackA1
[302] :143:CALL           v4:Stop()
end
[304] :144:GETGLOBAL      v4 = trackA2
[306] :144:JUMPXEQKNIL    if v4 ~= nil then -- goto #312
[308] :144:GETGLOBAL      v4 = trackA2
[311] :144:CALL           v4:Stop()
end
[313] :145:GETGLOBAL      v4 = trackA3
[315] :145:JUMPXEQKNIL    if v4 ~= nil then -- goto #321
[317] :145:GETGLOBAL      v4 = trackA3
[320] :145:CALL           v4:Stop()
end
[322] :146:GETGLOBAL      v4 = trackA4
[324] :146:JUMPXEQKNIL    if v4 ~= nil then -- goto #330
[326] :146:GETGLOBAL      v4 = trackA4
[329] :146:CALL           v4:Stop()
end
[330] :147:GETUPVAL       v5 = u_v0
[332] :147:GETTABLEKS     v4 = v5.Character
[333] :147:LOADK          v6 = "Humanoid"
[336] :147:CALL           v4 = v4:FindFirstChildOfClass(v6)
[337] :147:JUMPIFNOT      if v4 then -- goto #393
[338] :148:GETUPVAL       v5 = u_v0
[340] :148:GETTABLEKS     v4 = v5.Character
[341] :148:LOADK          v6 = "Humanoid"
[344] :148:CALL           v4 = v4:FindFirstChildOfClass(v6)
[346] :149:GETGLOBAL      v5 = ChargeMode
[348] :149:JUMPXEQKS      if v5 == "Right" then -- goto #372
[350] :150:GETIMPORT      v9 = script
[352] :150:GETTABLEKS     v8 = v9.Anims
[354] :150:GETTABLEKS     v7 = v8.Punch1RightPunch
[357] :150:CALL           v5 = v5:LoadAnimation(v7)
[359] :150:SETGLOBAL      trackA5 = v5
[361] :151:GETGLOBAL      v5 = trackA5
[362] :151:LOADK          v7 = 0.01
[363] :151:LOADN          v8 = 1
[364] :151:LOADN          v9 = 32
[367] :151:CALL           v5:Play(v7, v8, v9)
[368] :152:LOADK          v5 = "Left"
[370] :152:SETGLOBAL      ChargeMode = v5
[371] :152:JUMP           -- jump to #393
end
[373] :154:GETIMPORT      v9 = script
[375] :154:GETTABLEKS     v8 = v9.Anims
[377] :154:GETTABLEKS     v7 = v8.Punch1LeftPunch
[380] :154:CALL           v5 = v5:LoadAnimation(v7)
[382] :154:SETGLOBAL      trackA6 = v5
[384] :155:GETGLOBAL      v5 = trackA6
[385] :155:LOADK          v7 = 0.01
[386] :155:LOADN          v8 = 1
[387] :155:LOADN          v9 = 32
[390] :155:CALL           v5:Play(v7, v8, v9)
[391] :156:LOADK          v5 = "Right"
[393] :156:SETGLOBAL      ChargeMode = v5
[394] :159:GETUPVAL       v5 = u_v0
[396] :159:GETTABLEKS     v4 = v5.Character
[398] :159:JUMPXEQKNIL    if v4 ~= nil then -- goto #445
[399] :160:GETUPVAL       v5 = u_v0
[401] :160:GETTABLEKS     v4 = v5.Character
[402] :160:LOADK          v6 = "HumanoidRootPart"
[405] :160:CALL           v4 = v4:FindFirstChild(v6)
[406] :160:JUMPIFNOT      if v4 then -- goto #444
[407] :161:GETUPVAL       v5 = u_v0
[409] :161:GETTABLEKS     v4 = v5.Character
[410] :161:LOADK          v6 = "HumanoidRootPart"
[413] :161:CALL           v4 = v4:FindFirstChild(v6)
[414] :162:GETUPVAL       v5 = u_v0
[417] :162:CALL           v5 = v5:GetMouse()
[419] :163:GETIMPORT      v6 = CFrame.new
[421] :163:GETTABLEKS     v7 = v4.Position
[423] :163:GETTABLEKS     v11 = v5.Hit
[425] :163:GETTABLEKS     v10 = v11.p
[427] :163:GETTABLEKS     v9 = v10.X
[429] :163:GETTABLEKS     v11 = v4.Position
[431] :163:GETTABLEKS     v10 = v11.Y
[433] :163:GETTABLEKS     v13 = v5.Hit
[435] :163:GETTABLEKS     v12 = v13.p
[437] :163:GETTABLEKS     v11 = v12.Z
[440] :163:GETIMPORT      v8 = Vector3.new
[441] :163:CALL           v8 = v8(v9, v10, v11)
[442] :163:CALL           v6 = v6(v7, v8)
[444] :163:SETTABLEKS     v4.CFrame = v6
end
[446] :166:GETIMPORT      v4 = wait
[447] :166:LOADK          v5 = 0.25
[448] :166:CALL           v4(v5)
[449] :167:LOADB          v4 = true
[451] :167:SETGLOBAL      CanP1 = v4
end
end
end
end
end
[452] :170:RETURN         return
end
v5 = Power1
[405] :084:SETGLOBAL      Power1 = v5
[406] :171:DUPCLOSURE     
local function Power2(p4, p5, p6)
-- proto pool id: 6
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 471
-- size constants: 87
-- lineinfo gap: 24
-- max stack size: 29
-- is typed: false
[002] :172:GETIMPORT      v4 = script
[004] :172:GETTABLEKS     v3 = v4.Parent
[006] :172:GETTABLEKS     v2 = v3.Parent
[008] :172:GETTABLEKS     v1 = v2.DF_Disabled
[010] :172:GETTABLEKS     v0 = v1.Value
[012] :172:JUMPXEQKB      if v0 == true then -- goto #14
[013] :172:RETURN         return
end
[015] :173:GETIMPORT      v4 = script
[017] :173:GETTABLEKS     v3 = v4.Parent
[019] :173:GETTABLEKS     v2 = v3.Parent
[021] :173:GETTABLEKS     v1 = v2.Projecting
[023] :173:GETTABLEKS     v0 = v1.Value
[025] :173:JUMPXEQKB      if v0 == true then -- goto #27
[026] :173:RETURN         return
end
[027] :174:GETUPVAL       v2 = u_v1
[029] :174:GETTABLEKS     v1 = v2.Data
[031] :174:GETIMPORT      v6 = script
[033] :174:GETTABLEKS     v5 = v6.Power2
[035] :174:GETTABLEKS     v4 = v5.StatType
[037] :174:GETTABLEKS     v3 = v4.Value
[040] :174:CALL           v1 = v1:FindFirstChild(v3)
[042] :174:GETTABLEKS     v0 = v1.Value
[044] :175:GETIMPORT      v2 = script
[045] :175:LOADK          v4 = "Power2"
[048] :175:CALL           v2 = v2:FindFirstChild(v4)
[050] :175:GETTABLEKS     v1 = v2.Value
[052] :175:JUMPIFNOTLT    if v0 < v1 then -- goto #54
[053] :175:RETURN         return
end
[054] :177:LOADB          v1 = false
[055] :177:LOADB          v2 = false
[056] :177:LOADB          v3 = false
[057] :177:LOADB          v4 = false
[058] :177:LOADB          v5 = false
[059] :177:LOADB          v6 = false
[060] :177:LOADB          v7 = false
[061] :178:GETUPVAL       v9 = u_v0
[063] :178:GETTABLEKS     v8 = v9.Character
[066] :178:CALL           v8 = v8:GetChildren()
[067] :179:LOADN          v11 = 1
[068] :179:LENGTH         v9 = #v8
[069] :179:LOADN          v10 = 1
[070] :179:FORNPREP       for v11 = v11, v9, v10 do -- end at #113
[071] :180:GETTABLE       v13 = v8[v11]
[073] :180:GETTABLEKS     v12 = v13.Name
[075] :180:JUMPXEQKS      if v12 == "HumanoidRootPart" then -- goto #77
[076] :180:GETTABLE       v1 = v8[v11]
end
[077] :181:GETTABLE       v13 = v8[v11]
[079] :181:GETTABLEKS     v12 = v13.Name
[081] :181:JUMPXEQKS      if v12 == "Head" then -- goto #83
[082] :181:GETTABLE       v2 = v8[v11]
end
[083] :181:GETTABLE       v13 = v8[v11]
[085] :181:GETTABLEKS     v12 = v13.Name
[087] :181:JUMPXEQKS      if v12 == "Torso" then -- goto #89
[088] :181:GETTABLE       v3 = v8[v11]
end
[089] :182:GETTABLE       v13 = v8[v11]
[091] :182:GETTABLEKS     v12 = v13.Name
[093] :182:JUMPXEQKS      if v12 == "Left Arm" then -- goto #95
[094] :182:GETTABLE       v4 = v8[v11]
end
[095] :182:GETTABLE       v13 = v8[v11]
[097] :182:GETTABLEKS     v12 = v13.Name
[099] :182:JUMPXEQKS      if v12 == "Right Arm" then -- goto #101
[100] :182:GETTABLE       v5 = v8[v11]
end
[101] :183:GETTABLE       v13 = v8[v11]
[103] :183:GETTABLEKS     v12 = v13.Name
[105] :183:JUMPXEQKS      if v12 == "Left Leg" then -- goto #107
[106] :183:GETTABLE       v6 = v8[v11]
end
[107] :183:GETTABLE       v13 = v8[v11]
[109] :183:GETTABLEKS     v12 = v13.Name
[111] :183:JUMPXEQKS      if v12 == "Right Leg" then -- goto #113
[112] :183:GETTABLE       v7 = v8[v11]
end
[113] :179:FORNLOOP       end -- iterate + jump to #70
[115] :184:JUMPXEQKB      if v1 ~= false then -- goto #128
[117] :184:JUMPXEQKB      if v2 ~= false then -- goto #128
[119] :184:JUMPXEQKB      if v3 ~= false then -- goto #128
[121] :184:JUMPXEQKB      if v4 ~= false then -- goto #128
[123] :184:JUMPXEQKB      if v5 ~= false then -- goto #128
[125] :184:JUMPXEQKB      if v6 ~= false then -- goto #128
[127] :184:JUMPXEQKB      if v7 == false then -- goto #129
end
end
end
end
end
end
[128] :184:RETURN         return
end
[130] :186:GETGLOBAL      v9 = AbilityActivated
[131] :186:CALL           v9()
[133] :187:GETIMPORT      v9 = Enum.UserInputState.Begin
[135] :187:JUMPIFNOTEQ    if p5 ~= v9 then -- goto #229
[137] :187:GETGLOBAL      v9 = CanP2
[139] :187:JUMPXEQKB      if v9 == true then -- goto #229
[141] :189:GETGLOBAL      v9 = P1Charging
[143] :189:JUMPXEQKB      if v9 ~= true then -- goto #160
[145] :190:GETGLOBAL      v9 = P3Charging
[147] :190:JUMPXEQKB      if v9 ~= true then -- goto #160
[149] :191:GETGLOBAL      v9 = P4Charging
[151] :191:JUMPXEQKB      if v9 ~= true then -- goto #160
[153] :192:GETGLOBAL      v9 = P5Charging
[155] :192:JUMPXEQKB      if v9 ~= true then -- goto #160
[157] :193:GETGLOBAL      v9 = P6Charging
[159] :193:JUMPXEQKB      if v9 == true then -- goto #161
end
end
end
end
[160] :193:RETURN         return
end
[162] :195:GETGLOBAL      v9 = P2Charging
[164] :195:JUMPXEQKB      if v9 == false then -- goto #471
[165] :196:LOADB          v9 = true
[167] :196:SETGLOBAL      P2Charging = v9
[168] :197:GETUPVAL       v9 = u_v0
[171] :197:CALL           v9 = v9:GetMouse()
[173] :198:GETTABLEKS     v10 = v9.Hit
[175] :199:GETTABLEKS     v11 = v9.Target
[177] :200:GETIMPORT      v13 = script
[179] :200:GETTABLEKS     v12 = v13.RemoteEvent
[181] :200:GETGLOBAL      v14 = VTCcpkghc
[182] :200:MOVE           v15 = p4
[183] :200:LOADK          v16 = "StartCharging"
[184] :200:MOVE           v17 = v10
[185] :200:MOVE           v18 = v11
[186] :200:LOADNIL        v19 = nil
[188] :200:GETGLOBAL      v20 = ChargeMode
[191] :200:CALL           v12:FireServer(v14, v15, v16, v17, v18, v19, v20)
[193] :202:GETIMPORT      v12 = wait
[194] :202:CALL           v12()
[196] :203:GETGLOBAL      v12 = P2Charge
[197] :203:LOADN          v13 = 100
[199] :203:JUMPIFNOTLT    if v12 < v13 then -- goto #223
[201] :203:GETGLOBAL      v12 = CanP2
[203] :203:JUMPXEQKB      if v12 == true then -- goto #223
[205] :204:GETGLOBAL      v13 = P2Charge
[206] :204:ADDK           v12 = v13 + 1
[208] :204:SETGLOBAL      P2Charge = v12
[210] :205:GETGLOBAL      v12 = ChargeModule
[212] :205:GETIMPORT      v17 = script
[214] :205:GETTABLEKS     v15 = v17.Name
[215] :205:LOADK          v16 = 2
[216] :205:CONCAT         v14 = v15 .. v16
[218] :205:GETGLOBAL      v15 = P2Charge
[219] :205:LOADN          v16 = 100
[222] :205:CALL           v12:UpdateChargeBar(v14, v15, v16)
end
end
[224] :207:GETGLOBAL      v12 = P2Charging
[226] :207:JUMPXEQKB      if v12 ~= false then -- goto #471
[227] :207:JUMPBACK       -- jump back to #192
[228] :207:RETURN         return
end
end
[230] :209:GETIMPORT      v9 = Enum.UserInputState.End
[232] :209:JUMPIFNOTEQ    if p5 ~= v9 then -- goto #471
[234] :209:GETGLOBAL      v9 = CanP2
[236] :209:JUMPXEQKB      if v9 == true then -- goto #471
[238] :210:GETGLOBAL      v9 = P2Charging
[240] :210:JUMPXEQKB      if v9 == true then -- goto #471
[241] :211:LOADB          v9 = false
[243] :211:SETGLOBAL      P2Charging = v9
[244] :212:GETUPVAL       v9 = u_v0
[247] :212:CALL           v9 = v9:GetMouse()
[249] :213:GETTABLEKS     v10 = v9.Hit
[251] :214:GETTABLEKS     v11 = v9.Target
[253] :215:GETIMPORT      v13 = script
[255] :215:GETTABLEKS     v12 = v13.RemoteEvent
[257] :215:GETGLOBAL      v14 = VTCcpkghc
[258] :215:MOVE           v15 = p4
[259] :215:LOADK          v16 = "StopCharging"
[260] :215:MOVE           v17 = v10
[261] :215:MOVE           v18 = v11
[263] :215:GETGLOBAL      v19 = P2Charge
[266] :215:CALL           v12:FireServer(v14, v15, v16, v17, v18, v19)
[267] :216:LOADB          v12 = false
[269] :216:SETGLOBAL      CanP2 = v12
[271] :217:GETIMPORT      v15 = game
[273] :217:GETTABLEKS     v14 = v15.ReplicatedStorage
[275] :217:GETTABLEKS     v13 = v14.Resources
[277] :217:GETTABLEKS     v12 = v13.WeldablePart
[280] :217:CALL           v12 = v12:Clone()
[282] :218:GETIMPORT      v13 = Instance.new
[283] :218:LOADK          v14 = "ManualWeld"
[284] :218:CALL           v13 = v13(v14)
[286] :219:GETIMPORT      v14 = Instance.new
[287] :219:LOADK          v15 = "BodyVelocity"
[288] :219:CALL           v14 = v14(v15)
[290] :220:GETTABLEKS     v18 = v9.Hit
[292] :220:GETTABLEKS     v17 = v18.p
[294] :220:GETTABLEKS     v18 = v1.Position
[295] :220:SUB            v16 = v17 - v18
[297] :220:GETTABLEKS     v20 = v9.Hit
[299] :220:GETTABLEKS     v19 = v20.p
[301] :220:GETTABLEKS     v20 = v1.Position
[302] :220:SUB            v18 = v19 - v20
[304] :220:GETTABLEKS     v17 = v18.magnitude
[305] :220:DIV            v15 = v16 / v17
[306] :221:GETUPVAL       v23 = u_v1
[308] :221:GETTABLEKS     v22 = v23.Data
[310] :221:GETTABLEKS     v21 = v22.MeleeLevel
[312] :221:GETTABLEKS     v20 = v21.Value
[313] :221:DIVK           v19 = v20 / 1
[315] :221:GETGLOBAL      v21 = P2Charge
[316] :221:DIVK           v20 = v21 / 100
[317] :221:MUL            v18 = v19 * v20
[318] :221:ADDK           v17 = v18 + 50
[319] :221:MUL            v16 = v15 * v17
[321] :221:SETTABLEKS     v14.Velocity = v16
[323] :222:GETIMPORT      v20 = script
[325] :222:GETTABLEKS     v19 = v20.Parent
[327] :222:GETTABLEKS     v18 = v19.Parent
[329] :222:GETTABLEKS     v17 = v18.DF_Disabled
[331] :222:GETTABLEKS     v16 = v17.Value
[333] :222:JUMPXEQKB      if v16 ~= true then -- goto #382
[335] :223:GETIMPORT      v20 = script
[337] :223:GETTABLEKS     v19 = v20.Parent
[339] :223:GETTABLEKS     v18 = v19.Parent
[341] :223:GETTABLEKS     v17 = v18.ChillyPunched
[343] :223:GETTABLEKS     v16 = v17.Value
[345] :223:JUMPXEQKB      if v16 ~= true then -- goto #382
[347] :224:GETIMPORT      v20 = script
[349] :224:GETTABLEKS     v19 = v20.Parent
[351] :224:GETTABLEKS     v18 = v19.Parent
[353] :224:GETTABLEKS     v17 = v18.Projecting
[355] :224:GETTABLEKS     v16 = v17.Value
[357] :224:JUMPXEQKB      if v16 ~= true then -- goto #382
[359] :225:GETIMPORT      v20 = script
[361] :225:GETTABLEKS     v19 = v20.Parent
[363] :225:GETTABLEKS     v18 = v19.Parent
[365] :225:GETTABLEKS     v17 = v18.LoveStunned
[367] :225:GETTABLEKS     v16 = v17.Value
[369] :225:JUMPXEQKB      if v16 ~= true then -- goto #382
[371] :226:GETIMPORT      v20 = script
[373] :226:GETTABLEKS     v19 = v20.Parent
[375] :226:GETTABLEKS     v18 = v19.Parent
[377] :226:GETTABLEKS     v17 = v18.UsingBarrierBody
[379] :226:GETTABLEKS     v16 = v17.Value
[381] :226:JUMPXEQKB      if v16 == true then -- goto #386
end
end
end
end
[382] :227:LOADK          v16 = Vector3.new(0, 0, 0)
[384] :227:SETTABLEKS     v14.MaxForce = v16
[385] :227:JUMP           -- jump to #388
end
[386] :229:LOADK          v16 = Vector3.new(4000000, 4000000, 4000000)
[388] :229:SETTABLEKS     v14.MaxForce = v16
[389] :231:LOADN          v16 = 4
[391] :231:SETGLOBAL      P2Charge = v16
[393] :232:SETTABLEKS     v14.Parent = v12
[395] :233:SETTABLEKS     v13.Part0 = v1
[397] :234:SETTABLEKS     v13.Part1 = v12
[399] :235:SETTABLEKS     v13.Parent = v12
[401] :236:GETIMPORT      v17 = script
[403] :236:GETTABLEKS     v16 = v17.Bits
[405] :236:SETTABLEKS     v12.Parent = v16
[406] :237:GETUPVAL       v17 = u_v0
[408] :237:GETTABLEKS     v16 = v17.Character
[410] :237:JUMPXEQKNIL    if v16 ~= nil then -- goto #457
[411] :238:GETUPVAL       v17 = u_v0
[413] :238:GETTABLEKS     v16 = v17.Character
[414] :238:LOADK          v18 = "HumanoidRootPart"
[417] :238:CALL           v16 = v16:FindFirstChild(v18)
[418] :238:JUMPIFNOT      if v16 then -- goto #456
[419] :239:GETUPVAL       v17 = u_v0
[421] :239:GETTABLEKS     v16 = v17.Character
[422] :239:LOADK          v18 = "HumanoidRootPart"
[425] :239:CALL           v16 = v16:FindFirstChild(v18)
[426] :240:GETUPVAL       v17 = u_v0
[429] :240:CALL           v17 = v17:GetMouse()
[431] :241:GETIMPORT      v18 = CFrame.new
[433] :241:GETTABLEKS     v19 = v16.Position
[435] :241:GETTABLEKS     v23 = v17.Hit
[437] :241:GETTABLEKS     v22 = v23.p
[439] :241:GETTABLEKS     v21 = v22.X
[441] :241:GETTABLEKS     v23 = v16.Position
[443] :241:GETTABLEKS     v22 = v23.Y
[445] :241:GETTABLEKS     v25 = v17.Hit
[447] :241:GETTABLEKS     v24 = v25.p
[449] :241:GETTABLEKS     v23 = v24.Z
[452] :241:GETIMPORT      v20 = Vector3.new
[453] :241:CALL           v20 = v20(v21, v22, v23)
[454] :241:CALL           v18 = v18(v19, v20)
[456] :241:SETTABLEKS     v16.CFrame = v18
end
[458] :244:GETIMPORT      v16 = wait
[459] :244:LOADK          v17 = 0.1
[460] :244:CALL           v16(v17)
[463] :245:CALL           v16:Destroy()
[465] :246:GETIMPORT      v16 = wait
[466] :246:LOADK          v17 = 0.15
[467] :246:CALL           v16(v17)
[468] :247:LOADB          v16 = true
[470] :247:SETGLOBAL      CanP2 = v16
end
end
end
end
end
[471] :250:RETURN         return
end
v5 = Power2
[410] :171:SETGLOBAL      Power2 = v5
[411] :251:DUPCLOSURE     
local function Power3(p7, p8, p9)
-- proto pool id: 7
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 390
-- size constants: 71
-- lineinfo gap: 24
-- max stack size: 17
-- is typed: false
[002] :252:GETIMPORT      v4 = script
[004] :252:GETTABLEKS     v3 = v4.Parent
[006] :252:GETTABLEKS     v2 = v3.Parent
[008] :252:GETTABLEKS     v1 = v2.DF_Disabled
[010] :252:GETTABLEKS     v0 = v1.Value
[012] :252:JUMPXEQKB      if v0 == true then -- goto #14
[013] :252:RETURN         return
end
[015] :253:GETIMPORT      v4 = script
[017] :253:GETTABLEKS     v3 = v4.Parent
[019] :253:GETTABLEKS     v2 = v3.Parent
[021] :253:GETTABLEKS     v1 = v2.Projecting
[023] :253:GETTABLEKS     v0 = v1.Value
[025] :253:JUMPXEQKB      if v0 == true then -- goto #27
[026] :253:RETURN         return
end
[027] :254:GETUPVAL       v2 = u_v1
[029] :254:GETTABLEKS     v1 = v2.Data
[031] :254:GETIMPORT      v6 = script
[033] :254:GETTABLEKS     v5 = v6.Power3
[035] :254:GETTABLEKS     v4 = v5.StatType
[037] :254:GETTABLEKS     v3 = v4.Value
[040] :254:CALL           v1 = v1:FindFirstChild(v3)
[042] :254:GETTABLEKS     v0 = v1.Value
[044] :255:GETIMPORT      v2 = script
[045] :255:LOADK          v4 = "Power3"
[048] :255:CALL           v2 = v2:FindFirstChild(v4)
[050] :255:GETTABLEKS     v1 = v2.Value
[052] :255:JUMPIFNOTLT    if v0 < v1 then -- goto #54
[053] :255:RETURN         return
end
[055] :256:GETGLOBAL      v1 = AbilityActivated
[056] :256:CALL           v1()
[058] :257:GETIMPORT      v1 = Enum.UserInputState.Begin
[060] :257:JUMPIFNOTEQ    if p8 ~= v1 then -- goto #206
[062] :257:GETGLOBAL      v1 = CanP3
[064] :257:JUMPXEQKB      if v1 == true then -- goto #206
[066] :259:GETGLOBAL      v1 = P1Charging
[068] :259:JUMPXEQKB      if v1 ~= true then -- goto #85
[070] :260:GETGLOBAL      v1 = P2Charging
[072] :260:JUMPXEQKB      if v1 ~= true then -- goto #85
[074] :261:GETGLOBAL      v1 = P4Charging
[076] :261:JUMPXEQKB      if v1 ~= true then -- goto #85
[078] :262:GETGLOBAL      v1 = P5Charging
[080] :262:JUMPXEQKB      if v1 ~= true then -- goto #85
[082] :263:GETGLOBAL      v1 = P6Charging
[084] :263:JUMPXEQKB      if v1 == true then -- goto #86
end
end
end
end
[085] :263:RETURN         return
end
[087] :265:GETGLOBAL      v1 = P3Charging
[089] :265:JUMPXEQKB      if v1 == false then -- goto #390
[090] :266:LOADB          v1 = true
[092] :266:SETGLOBAL      P3Charging = v1
[093] :267:GETUPVAL       v1 = u_v0
[096] :267:CALL           v1 = v1:GetMouse()
[098] :268:GETTABLEKS     v2 = v1.Hit
[100] :269:GETTABLEKS     v3 = v1.Target
[102] :270:GETIMPORT      v5 = script
[104] :270:GETTABLEKS     v4 = v5.RemoteEvent
[106] :270:GETGLOBAL      v6 = VTCcpkghc
[107] :270:MOVE           v7 = p7
[108] :270:LOADK          v8 = "StartCharging"
[109] :270:MOVE           v9 = v2
[110] :270:MOVE           v10 = v3
[111] :270:LOADNIL        v11 = nil
[113] :270:GETGLOBAL      v12 = ChargeMode
[116] :270:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11, v12)
[117] :271:GETUPVAL       v5 = u_v0
[119] :271:GETTABLEKS     v4 = v5.Character
[120] :271:LOADK          v6 = "Humanoid"
[123] :271:CALL           v4 = v4:FindFirstChildOfClass(v6)
[124] :271:JUMPIFNOT      if v4 then -- goto #168
[125] :272:GETUPVAL       v5 = u_v0
[127] :272:GETTABLEKS     v4 = v5.Character
[128] :272:LOADK          v6 = "Humanoid"
[131] :272:CALL           v4 = v4:FindFirstChildOfClass(v6)
[133] :273:GETGLOBAL      v5 = ChargeMode
[135] :273:JUMPXEQKS      if v5 == "Right" then -- goto #153
[137] :275:GETIMPORT      v9 = script
[139] :275:GETTABLEKS     v8 = v9.Anims
[141] :275:GETTABLEKS     v7 = v8.FancyRight
[144] :275:CALL           v5 = v5:LoadAnimation(v7)
[146] :275:SETGLOBAL      trackB2 = v5
[148] :281:GETGLOBAL      v5 = trackB2
[151] :281:CALL           v5:Play()
[152] :281:JUMP           -- jump to #168
end
[154] :284:GETIMPORT      v9 = script
[156] :284:GETTABLEKS     v8 = v9.Anims
[158] :284:GETTABLEKS     v7 = v8.FancyLeft
[161] :284:CALL           v5 = v5:LoadAnimation(v7)
[163] :284:SETGLOBAL      trackB4 = v5
[165] :290:GETGLOBAL      v5 = trackB4
[168] :290:CALL           v5:Play()
[170] :294:GETIMPORT      v4 = wait
[171] :294:CALL           v4()
[173] :295:GETGLOBAL      v4 = P3Charge
[174] :295:LOADN          v5 = 100
[176] :295:JUMPIFNOTLT    if v4 < v5 then -- goto #200
[178] :295:GETGLOBAL      v4 = CanP3
[180] :295:JUMPXEQKB      if v4 == true then -- goto #200
[182] :296:GETGLOBAL      v5 = P3Charge
[183] :296:ADDK           v4 = v5 + 1
[185] :296:SETGLOBAL      P3Charge = v4
[187] :297:GETGLOBAL      v4 = ChargeModule
[189] :297:GETIMPORT      v9 = script
[191] :297:GETTABLEKS     v7 = v9.Name
[192] :297:LOADK          v8 = 3
[193] :297:CONCAT         v6 = v7 .. v8
[195] :297:GETGLOBAL      v7 = P3Charge
[196] :297:LOADN          v8 = 100
[199] :297:CALL           v4:UpdateChargeBar(v6, v7, v8)
end
end
[201] :299:GETGLOBAL      v4 = P3Charging
[203] :299:JUMPXEQKB      if v4 ~= false then -- goto #390
[204] :299:JUMPBACK       -- jump back to #169
[205] :299:RETURN         return
end
end
[207] :301:GETIMPORT      v1 = Enum.UserInputState.End
[209] :301:JUMPIFNOTEQ    if p8 ~= v1 then -- goto #390
[211] :301:GETGLOBAL      v1 = CanP3
[213] :301:JUMPXEQKB      if v1 == true then -- goto #390
[215] :302:GETGLOBAL      v1 = P3Charging
[217] :302:JUMPXEQKB      if v1 == true then -- goto #390
[218] :303:LOADB          v1 = false
[220] :303:SETGLOBAL      P3Charging = v1
[221] :304:GETUPVAL       v1 = u_v0
[224] :304:CALL           v1 = v1:GetMouse()
[226] :305:GETTABLEKS     v2 = v1.Hit
[228] :306:GETTABLEKS     v3 = v1.Target
[230] :307:GETIMPORT      v5 = script
[232] :307:GETTABLEKS     v4 = v5.RemoteEvent
[234] :307:GETGLOBAL      v6 = VTCcpkghc
[235] :307:MOVE           v7 = p7
[236] :307:LOADK          v8 = "StopCharging"
[237] :307:MOVE           v9 = v2
[238] :307:MOVE           v10 = v3
[240] :307:GETGLOBAL      v11 = P3Charge
[243] :307:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11)
[244] :308:LOADB          v4 = false
[246] :308:SETGLOBAL      CanP3 = v4
[247] :309:LOADN          v4 = 4
[249] :309:SETGLOBAL      P3Charge = v4
[251] :311:GETGLOBAL      v4 = trackB2
[253] :311:JUMPXEQKNIL    if v4 ~= nil then -- goto #259
[255] :311:GETGLOBAL      v4 = trackB2
[258] :311:CALL           v4:Stop()
end
[260] :313:GETGLOBAL      v4 = trackB4
[262] :313:JUMPXEQKNIL    if v4 ~= nil then -- goto #268
[264] :313:GETGLOBAL      v4 = trackB4
[267] :313:CALL           v4:Stop()
end
[268] :314:GETUPVAL       v5 = u_v0
[270] :314:GETTABLEKS     v4 = v5.Character
[271] :314:LOADK          v6 = "Humanoid"
[274] :314:CALL           v4 = v4:FindFirstChildOfClass(v6)
[275] :314:JUMPIFNOT      if v4 then -- goto #331
[276] :315:GETUPVAL       v5 = u_v0
[278] :315:GETTABLEKS     v4 = v5.Character
[279] :315:LOADK          v6 = "Humanoid"
[282] :315:CALL           v4 = v4:FindFirstChildOfClass(v6)
[284] :316:GETGLOBAL      v5 = ChargeMode
[286] :316:JUMPXEQKS      if v5 == "Right" then -- goto #310
[288] :317:GETIMPORT      v9 = script
[290] :317:GETTABLEKS     v8 = v9.Anims
[292] :317:GETTABLEKS     v7 = v8.FancyRightCast
[295] :317:CALL           v5 = v5:LoadAnimation(v7)
[297] :317:SETGLOBAL      trackB5 = v5
[299] :318:GETGLOBAL      v5 = trackB5
[300] :318:LOADK          v7 = 0.1
[301] :318:LOADN          v8 = 1
[302] :318:LOADN          v9 = 30
[305] :318:CALL           v5:Play(v7, v8, v9)
[306] :319:LOADK          v5 = "Left"
[308] :319:SETGLOBAL      ChargeMode = v5
[309] :319:JUMP           -- jump to #331
end
[311] :321:GETIMPORT      v9 = script
[313] :321:GETTABLEKS     v8 = v9.Anims
[315] :321:GETTABLEKS     v7 = v8.FancyLeftCast
[318] :321:CALL           v5 = v5:LoadAnimation(v7)
[320] :321:SETGLOBAL      trackB6 = v5
[322] :322:GETGLOBAL      v5 = trackB6
[323] :322:LOADK          v7 = 0.1
[324] :322:LOADN          v8 = 1
[325] :322:LOADN          v9 = 30
[328] :322:CALL           v5:Play(v7, v8, v9)
[329] :323:LOADK          v5 = "Right"
[331] :323:SETGLOBAL      ChargeMode = v5
[332] :326:GETUPVAL       v5 = u_v0
[334] :326:GETTABLEKS     v4 = v5.Character
[336] :326:JUMPXEQKNIL    if v4 ~= nil then -- goto #383
[337] :327:GETUPVAL       v5 = u_v0
[339] :327:GETTABLEKS     v4 = v5.Character
[340] :327:LOADK          v6 = "HumanoidRootPart"
[343] :327:CALL           v4 = v4:FindFirstChild(v6)
[344] :327:JUMPIFNOT      if v4 then -- goto #382
[345] :328:GETUPVAL       v5 = u_v0
[347] :328:GETTABLEKS     v4 = v5.Character
[348] :328:LOADK          v6 = "HumanoidRootPart"
[351] :328:CALL           v4 = v4:FindFirstChild(v6)
[352] :329:GETUPVAL       v5 = u_v0
[355] :329:CALL           v5 = v5:GetMouse()
[357] :330:GETIMPORT      v6 = CFrame.new
[359] :330:GETTABLEKS     v7 = v4.Position
[361] :330:GETTABLEKS     v11 = v5.Hit
[363] :330:GETTABLEKS     v10 = v11.p
[365] :330:GETTABLEKS     v9 = v10.X
[367] :330:GETTABLEKS     v11 = v4.Position
[369] :330:GETTABLEKS     v10 = v11.Y
[371] :330:GETTABLEKS     v13 = v5.Hit
[373] :330:GETTABLEKS     v12 = v13.p
[375] :330:GETTABLEKS     v11 = v12.Z
[378] :330:GETIMPORT      v8 = Vector3.new
[379] :330:CALL           v8 = v8(v9, v10, v11)
[380] :330:CALL           v6 = v6(v7, v8)
[382] :330:SETTABLEKS     v4.CFrame = v6
end
[384] :333:GETIMPORT      v4 = wait
[385] :333:LOADK          v5 = 0.25
[386] :333:CALL           v4(v5)
[387] :334:LOADB          v4 = true
[389] :334:SETGLOBAL      CanP3 = v4
end
end
end
end
end
[390] :337:RETURN         return
end
v5 = Power3
[415] :251:SETGLOBAL      Power3 = v5
[416] :338:DUPCLOSURE     
local function P4Looker()
-- proto pool id: 8
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 52
-- size constants: 15
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[001] :339:GETUPVAL       v1 = u_v0
[003] :339:GETTABLEKS     v0 = v1.Character
[005] :339:JUMPXEQKNIL    if v0 ~= nil then -- goto #52
[006] :340:GETUPVAL       v1 = u_v0
[008] :340:GETTABLEKS     v0 = v1.Character
[009] :340:LOADK          v2 = "HumanoidRootPart"
[012] :340:CALL           v0 = v0:FindFirstChild(v2)
[013] :340:JUMPIFNOT      if v0 then -- goto #51
[014] :341:GETUPVAL       v1 = u_v0
[016] :341:GETTABLEKS     v0 = v1.Character
[017] :341:LOADK          v2 = "HumanoidRootPart"
[020] :341:CALL           v0 = v0:FindFirstChild(v2)
[021] :342:GETUPVAL       v1 = u_v0
[024] :342:CALL           v1 = v1:GetMouse()
[026] :343:GETIMPORT      v2 = CFrame.new
[028] :343:GETTABLEKS     v3 = v0.Position
[030] :343:GETTABLEKS     v7 = v1.Hit
[032] :343:GETTABLEKS     v6 = v7.p
[034] :343:GETTABLEKS     v5 = v6.X
[036] :343:GETTABLEKS     v7 = v0.Position
[038] :343:GETTABLEKS     v6 = v7.Y
[040] :343:GETTABLEKS     v9 = v1.Hit
[042] :343:GETTABLEKS     v8 = v9.p
[044] :343:GETTABLEKS     v7 = v8.Z
[047] :343:GETIMPORT      v4 = Vector3.new
[048] :343:CALL           v4 = v4(v5, v6, v7)
[049] :343:CALL           v2 = v2(v3, v4)
[051] :343:SETTABLEKS     v0.CFrame = v2
end
[052] :346:RETURN         return
end
v5 = P4Looker
[419] :594:SETGLOBAL      P4Looker = v5
[420] :603:DUPCLOSURE     
local function Power4(p10, p11, p12)
-- proto pool id: 10
-- num upvalues: 2
-- num inner protos: 1
-- size instructions: 351
-- size constants: 72
-- lineinfo gap: 24
-- max stack size: 16
-- is typed: false
[002] :348:GETIMPORT      v4 = script
[004] :348:GETTABLEKS     v3 = v4.Parent
[006] :348:GETTABLEKS     v2 = v3.Parent
[008] :348:GETTABLEKS     v1 = v2.DF_Disabled
[010] :348:GETTABLEKS     v0 = v1.Value
[012] :348:JUMPXEQKB      if v0 == true then -- goto #14
[013] :348:RETURN         return
end
[015] :349:GETIMPORT      v4 = script
[017] :349:GETTABLEKS     v3 = v4.Parent
[019] :349:GETTABLEKS     v2 = v3.Parent
[021] :349:GETTABLEKS     v1 = v2.Projecting
[023] :349:GETTABLEKS     v0 = v1.Value
[025] :349:JUMPXEQKB      if v0 == true then -- goto #27
[026] :349:RETURN         return
end
[027] :350:GETUPVAL       v2 = u_v1
[029] :350:GETTABLEKS     v1 = v2.Data
[031] :350:GETIMPORT      v6 = script
[033] :350:GETTABLEKS     v5 = v6.Power4
[035] :350:GETTABLEKS     v4 = v5.StatType
[037] :350:GETTABLEKS     v3 = v4.Value
[040] :350:CALL           v1 = v1:FindFirstChild(v3)
[042] :350:GETTABLEKS     v0 = v1.Value
[044] :351:GETIMPORT      v2 = script
[045] :351:LOADK          v4 = "Power4"
[048] :351:CALL           v2 = v2:FindFirstChild(v4)
[050] :351:GETTABLEKS     v1 = v2.Value
[052] :351:JUMPIFNOTLT    if v0 < v1 then -- goto #54
[053] :351:RETURN         return
end
[055] :352:GETGLOBAL      v1 = AbilityActivated
[056] :352:CALL           v1()
[058] :353:GETIMPORT      v1 = Enum.UserInputState.Begin
[060] :353:JUMPIFNOTEQ    if p11 ~= v1 then -- goto #220
[062] :353:GETGLOBAL      v1 = CanP4
[064] :353:JUMPXEQKB      if v1 == true then -- goto #220
[066] :355:GETGLOBAL      v1 = P1Charging
[068] :355:JUMPXEQKB      if v1 ~= true then -- goto #85
[070] :356:GETGLOBAL      v1 = P2Charging
[072] :356:JUMPXEQKB      if v1 ~= true then -- goto #85
[074] :357:GETGLOBAL      v1 = P3Charging
[076] :357:JUMPXEQKB      if v1 ~= true then -- goto #85
[078] :358:GETGLOBAL      v1 = P5Charging
[080] :358:JUMPXEQKB      if v1 ~= true then -- goto #85
[082] :359:GETGLOBAL      v1 = P6Charging
[084] :359:JUMPXEQKB      if v1 == true then -- goto #86
end
end
end
end
[085] :359:RETURN         return
end
[087] :361:GETGLOBAL      v1 = P4Charging
[089] :361:JUMPXEQKB      if v1 == false then -- goto #351
[090] :362:LOADB          v1 = true
[092] :362:SETGLOBAL      P4Charging = v1
[093] :363:GETUPVAL       v1 = u_v0
[096] :363:CALL           v1 = v1:GetMouse()
[098] :364:GETTABLEKS     v2 = v1.Hit
[100] :365:GETTABLEKS     v3 = v1.Target
[102] :366:GETIMPORT      v5 = script
[104] :366:GETTABLEKS     v4 = v5.RemoteEvent
[106] :366:GETGLOBAL      v6 = VTCcpkghc
[107] :366:MOVE           v7 = p10
[108] :366:LOADK          v8 = "StartCharging"
[109] :366:MOVE           v9 = v2
[110] :366:MOVE           v10 = v3
[111] :366:LOADNIL        v11 = nil
[113] :366:GETGLOBAL      v12 = ChargeMode
[116] :366:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11, v12)
[117] :367:GETUPVAL       v5 = u_v0
[119] :367:GETTABLEKS     v4 = v5.Character
[120] :367:LOADK          v6 = "Humanoid"
[123] :367:CALL           v4 = v4:FindFirstChildOfClass(v6)
[124] :367:JUMPIFNOT      if v4 then -- goto #166
[125] :368:GETUPVAL       v5 = u_v0
[127] :368:GETTABLEKS     v4 = v5.Character
[128] :368:LOADK          v6 = "Humanoid"
[131] :368:CALL           v4 = v4:FindFirstChildOfClass(v6)
[133] :369:GETIMPORT      v9 = script
[135] :369:GETTABLEKS     v8 = v9.Anims
[137] :369:GETTABLEKS     v7 = v8.BreathCharge
[140] :369:CALL           v5 = v5:LoadAnimation(v7)
[142] :369:SETGLOBAL      trackB3 = v5
[144] :370:GETIMPORT      v9 = script
[146] :370:GETTABLEKS     v8 = v9.Anims
[148] :370:GETTABLEKS     v7 = v8.BreathCharged
[151] :370:CALL           v5 = v5:LoadAnimation(v7)
[153] :370:SETGLOBAL      trackB4 = v5
[155] :371:GETGLOBAL      v6 = trackB3
[157] :371:GETTABLEKS     v5 = v6.Stopped
[158] :371:DUPCLOSURE     v7 = function()
-- proto pool id: 9
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :372:GETGLOBAL      v0 = P4Charging
[004] :372:JUMPXEQKB      if v0 == true then -- goto #10
[006] :373:GETGLOBAL      v0 = trackB4
[009] :373:CALL           v0:Play()
end
[010] :375:RETURN         return
end
[161] :371:CALL           v5:Connect(v7)
[163] :376:GETGLOBAL      v5 = trackB3
[166] :376:CALL           v5:Play()
[168] :378:GETIMPORT      v4 = game
[169] :378:LOADK          v6 = "RunService"
[172] :378:CALL           v4 = v4:GetService(v6)
[173] :378:LOADK          v6 = "BombP4Looker"
[175] :378:GETIMPORT      v8 = Enum.RenderPriority.Last
[177] :378:GETTABLEKS     v7 = v8.Value
[179] :378:GETGLOBAL      v8 = P4Looker
[182] :378:CALL           v4:BindToRenderStep(v6, v7, v8)
[184] :380:GETIMPORT      v4 = wait
[185] :380:CALL           v4()
[187] :381:GETGLOBAL      v4 = P4Charge
[188] :381:LOADN          v5 = 100
[190] :381:JUMPIFNOTLT    if v4 < v5 then -- goto #214
[192] :381:GETGLOBAL      v4 = CanP4
[194] :381:JUMPXEQKB      if v4 == true then -- goto #214
[196] :382:GETGLOBAL      v5 = P4Charge
[197] :382:ADDK           v4 = v5 + 1
[199] :382:SETGLOBAL      P4Charge = v4
[201] :383:GETGLOBAL      v4 = ChargeModule
[203] :383:GETIMPORT      v9 = script
[205] :383:GETTABLEKS     v7 = v9.Name
[206] :383:LOADK          v8 = 4
[207] :383:CONCAT         v6 = v7 .. v8
[209] :383:GETGLOBAL      v7 = P4Charge
[210] :383:LOADN          v8 = 100
[213] :383:CALL           v4:UpdateChargeBar(v6, v7, v8)
end
end
[215] :385:GETGLOBAL      v4 = P4Charging
[217] :385:JUMPXEQKB      if v4 ~= false then -- goto #351
[218] :385:JUMPBACK       -- jump back to #183
[219] :385:RETURN         return
end
end
[221] :387:GETIMPORT      v1 = Enum.UserInputState.End
[223] :387:JUMPIFNOTEQ    if p11 ~= v1 then -- goto #351
[225] :387:GETGLOBAL      v1 = CanP4
[227] :387:JUMPXEQKB      if v1 == true then -- goto #351
[229] :388:GETGLOBAL      v1 = P4Charging
[231] :388:JUMPXEQKB      if v1 == true then -- goto #351
[232] :389:LOADB          v1 = false
[234] :389:SETGLOBAL      P4Charging = v1
[235] :390:GETUPVAL       v1 = u_v0
[238] :390:CALL           v1 = v1:GetMouse()
[240] :391:GETTABLEKS     v2 = v1.Hit
[242] :392:GETTABLEKS     v3 = v1.Target
[244] :393:GETIMPORT      v5 = script
[246] :393:GETTABLEKS     v4 = v5.RemoteEvent
[248] :393:GETGLOBAL      v6 = VTCcpkghc
[249] :393:MOVE           v7 = p10
[250] :393:LOADK          v8 = "StopCharging"
[251] :393:MOVE           v9 = v2
[252] :393:MOVE           v10 = v3
[254] :393:GETGLOBAL      v11 = P4Charge
[257] :393:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11)
[258] :394:LOADB          v4 = false
[260] :394:SETGLOBAL      CanP4 = v4
[261] :395:LOADN          v4 = 4
[263] :395:SETGLOBAL      P4Charge = v4
[265] :396:GETGLOBAL      v4 = trackB1
[267] :396:JUMPXEQKNIL    if v4 ~= nil then -- goto #273
[269] :396:GETGLOBAL      v4 = trackB1
[272] :396:CALL           v4:Stop()
end
[274] :397:GETGLOBAL      v4 = trackB2
[276] :397:JUMPXEQKNIL    if v4 ~= nil then -- goto #282
[278] :397:GETGLOBAL      v4 = trackB2
[281] :397:CALL           v4:Stop()
end
[283] :398:GETGLOBAL      v4 = trackB3
[285] :398:JUMPXEQKNIL    if v4 ~= nil then -- goto #291
[287] :398:GETGLOBAL      v4 = trackB3
[290] :398:CALL           v4:Stop()
end
[292] :399:GETGLOBAL      v4 = trackB4
[294] :399:JUMPXEQKNIL    if v4 ~= nil then -- goto #300
[296] :399:GETGLOBAL      v4 = trackB4
[299] :399:CALL           v4:Stop()
end
[300] :400:GETUPVAL       v5 = u_v0
[302] :400:GETTABLEKS     v4 = v5.Character
[303] :400:LOADK          v6 = "Humanoid"
[306] :400:CALL           v4 = v4:FindFirstChildOfClass(v6)
[307] :400:JUMPIFNOT      if v4 then -- goto #333
[308] :401:GETUPVAL       v5 = u_v0
[310] :401:GETTABLEKS     v4 = v5.Character
[311] :401:LOADK          v6 = "Humanoid"
[314] :401:CALL           v4 = v4:FindFirstChildOfClass(v6)
[316] :402:GETIMPORT      v9 = script
[318] :402:GETTABLEKS     v8 = v9.Anims
[320] :402:GETTABLEKS     v7 = v8.BreathRelease
[323] :402:CALL           v5 = v5:LoadAnimation(v7)
[325] :402:SETGLOBAL      trackB6 = v5
[327] :403:GETGLOBAL      v5 = trackB6
[328] :403:LOADK          v7 = 0.1
[329] :403:LOADN          v8 = 1
[330] :403:LOADN          v9 = 32
[333] :403:CALL           v5:Play(v7, v8, v9)
[335] :405:GETIMPORT      v4 = game
[336] :405:LOADK          v6 = "RunService"
[339] :405:CALL           v4 = v4:GetService(v6)
[340] :405:LOADK          v6 = "BombP4Looker"
[343] :405:CALL           v4:UnbindFromRenderStep(v6)
[345] :406:GETIMPORT      v4 = wait
[346] :406:LOADK          v5 = 0.25
[347] :406:CALL           v4(v5)
[348] :407:LOADB          v4 = true
[350] :407:SETGLOBAL      CanP4 = v4
end
end
end
end
end
[351] :410:RETURN         return
end
v5 = Power4
[424] :603:SETGLOBAL      Power4 = v5
[425] :667:DUPCLOSURE     
local function Power5(p13, p14, p15)
-- proto pool id: 13
-- num upvalues: 2
-- num inner protos: 2
-- size instructions: 446
-- size constants: 79
-- lineinfo gap: 24
-- max stack size: 17
-- is typed: false
[002] :412:GETIMPORT      v4 = script
[004] :412:GETTABLEKS     v3 = v4.Parent
[006] :412:GETTABLEKS     v2 = v3.Parent
[008] :412:GETTABLEKS     v1 = v2.DF_Disabled
[010] :412:GETTABLEKS     v0 = v1.Value
[012] :412:JUMPXEQKB      if v0 == true then -- goto #14
[013] :412:RETURN         return
end
[015] :413:GETIMPORT      v4 = script
[017] :413:GETTABLEKS     v3 = v4.Parent
[019] :413:GETTABLEKS     v2 = v3.Parent
[021] :413:GETTABLEKS     v1 = v2.Projecting
[023] :413:GETTABLEKS     v0 = v1.Value
[025] :413:JUMPXEQKB      if v0 == true then -- goto #27
[026] :413:RETURN         return
end
[027] :414:GETUPVAL       v2 = u_v1
[029] :414:GETTABLEKS     v1 = v2.Data
[031] :414:GETIMPORT      v6 = script
[033] :414:GETTABLEKS     v5 = v6.Power5
[035] :414:GETTABLEKS     v4 = v5.StatType
[037] :414:GETTABLEKS     v3 = v4.Value
[040] :414:CALL           v1 = v1:FindFirstChild(v3)
[042] :414:GETTABLEKS     v0 = v1.Value
[044] :415:GETIMPORT      v2 = script
[045] :415:LOADK          v4 = "Power5"
[048] :415:CALL           v2 = v2:FindFirstChild(v4)
[050] :415:GETTABLEKS     v1 = v2.Value
[052] :415:JUMPIFNOTLT    if v0 < v1 then -- goto #54
[053] :415:RETURN         return
end
[055] :416:GETGLOBAL      v1 = AbilityActivated
[056] :416:CALL           v1()
[058] :417:GETIMPORT      v1 = Enum.UserInputState.Begin
[060] :417:JUMPIFNOTEQ    if p14 ~= v1 then -- goto #244
[062] :417:GETGLOBAL      v1 = CanP5
[064] :417:JUMPXEQKB      if v1 == true then -- goto #244
[066] :419:GETGLOBAL      v1 = P1Charging
[068] :419:JUMPXEQKB      if v1 ~= true then -- goto #85
[070] :420:GETGLOBAL      v1 = P2Charging
[072] :420:JUMPXEQKB      if v1 ~= true then -- goto #85
[074] :421:GETGLOBAL      v1 = P3Charging
[076] :421:JUMPXEQKB      if v1 ~= true then -- goto #85
[078] :422:GETGLOBAL      v1 = P4Charging
[080] :422:JUMPXEQKB      if v1 ~= true then -- goto #85
[082] :423:GETGLOBAL      v1 = P6Charging
[084] :423:JUMPXEQKB      if v1 == true then -- goto #86
end
end
end
end
[085] :423:RETURN         return
end
[087] :425:GETGLOBAL      v1 = P5Charging
[089] :425:JUMPXEQKB      if v1 == false then -- goto #446
[090] :426:LOADB          v1 = true
[092] :426:SETGLOBAL      P5Charging = v1
[093] :427:GETUPVAL       v1 = u_v0
[096] :427:CALL           v1 = v1:GetMouse()
[098] :428:GETTABLEKS     v2 = v1.Hit
[100] :429:GETTABLEKS     v3 = v1.Target
[102] :430:GETIMPORT      v5 = script
[104] :430:GETTABLEKS     v4 = v5.RemoteEvent
[106] :430:GETGLOBAL      v6 = VTCcpkghc
[107] :430:MOVE           v7 = p13
[108] :430:LOADK          v8 = "StartCharging"
[109] :430:MOVE           v9 = v2
[110] :430:MOVE           v10 = v3
[111] :430:LOADNIL        v11 = nil
[113] :430:GETGLOBAL      v12 = ChargeMode
[116] :430:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11, v12)
[117] :431:GETUPVAL       v5 = u_v0
[119] :431:GETTABLEKS     v4 = v5.Character
[120] :431:LOADK          v6 = "Humanoid"
[123] :431:CALL           v4 = v4:FindFirstChildOfClass(v6)
[124] :431:JUMPIFNOT      if v4 then -- goto #206
[125] :432:GETUPVAL       v5 = u_v0
[127] :432:GETTABLEKS     v4 = v5.Character
[128] :432:LOADK          v6 = "Humanoid"
[131] :432:CALL           v4 = v4:FindFirstChildOfClass(v6)
[133] :433:GETGLOBAL      v5 = ChargeMode
[135] :433:JUMPXEQKS      if v5 == "Right" then -- goto #172
[137] :434:GETIMPORT      v9 = script
[139] :434:GETTABLEKS     v8 = v9.Anims
[141] :434:GETTABLEKS     v7 = v8.WaveRightCharge
[144] :434:CALL           v5 = v5:LoadAnimation(v7)
[146] :434:SETGLOBAL      trackB1 = v5
[148] :435:GETIMPORT      v9 = script
[150] :435:GETTABLEKS     v8 = v9.Anims
[152] :435:GETTABLEKS     v7 = v8.WaveRightCharged
[155] :435:CALL           v5 = v5:LoadAnimation(v7)
[157] :435:SETGLOBAL      trackB2 = v5
[159] :436:GETGLOBAL      v6 = trackB1
[161] :436:GETTABLEKS     v5 = v6.Stopped
[162] :436:DUPCLOSURE     v7 = function()
-- proto pool id: 11
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :437:GETGLOBAL      v0 = P5Charging
[004] :437:JUMPXEQKB      if v0 == true then -- goto #10
[006] :438:GETGLOBAL      v0 = trackB2
[009] :438:CALL           v0:Play()
end
[010] :440:RETURN         return
end
[165] :436:CALL           v5:Connect(v7)
[167] :441:GETGLOBAL      v5 = trackB1
[170] :441:CALL           v5:Play()
[171] :441:JUMP           -- jump to #206
end
[173] :443:GETIMPORT      v9 = script
[175] :443:GETTABLEKS     v8 = v9.Anims
[177] :443:GETTABLEKS     v7 = v8.WaveLeftCharge
[180] :443:CALL           v5 = v5:LoadAnimation(v7)
[182] :443:SETGLOBAL      trackB3 = v5
[184] :444:GETIMPORT      v9 = script
[186] :444:GETTABLEKS     v8 = v9.Anims
[188] :444:GETTABLEKS     v7 = v8.WaveLeftCharged
[191] :444:CALL           v5 = v5:LoadAnimation(v7)
[193] :444:SETGLOBAL      trackB4 = v5
[195] :445:GETGLOBAL      v6 = trackB3
[197] :445:GETTABLEKS     v5 = v6.Stopped
[198] :445:DUPCLOSURE     v7 = function()
-- proto pool id: 12
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :446:GETGLOBAL      v0 = P5Charging
[004] :446:JUMPXEQKB      if v0 == true then -- goto #10
[006] :447:GETGLOBAL      v0 = trackB4
[009] :447:CALL           v0:Play()
end
[010] :449:RETURN         return
end
[201] :445:CALL           v5:Connect(v7)
[203] :450:GETGLOBAL      v5 = trackB3
[206] :450:CALL           v5:Play()
[208] :454:GETIMPORT      v4 = wait
[209] :454:CALL           v4()
[211] :455:GETGLOBAL      v4 = P5Charge
[212] :455:LOADN          v5 = 100
[214] :455:JUMPIFNOTLT    if v4 < v5 then -- goto #238
[216] :455:GETGLOBAL      v4 = CanP5
[218] :455:JUMPXEQKB      if v4 == true then -- goto #238
[220] :456:GETGLOBAL      v5 = P5Charge
[221] :456:ADDK           v4 = v5 + 1
[223] :456:SETGLOBAL      P5Charge = v4
[225] :457:GETGLOBAL      v4 = ChargeModule
[227] :457:GETIMPORT      v9 = script
[229] :457:GETTABLEKS     v7 = v9.Name
[230] :457:LOADK          v8 = 5
[231] :457:CONCAT         v6 = v7 .. v8
[233] :457:GETGLOBAL      v7 = P5Charge
[234] :457:LOADN          v8 = 100
[237] :457:CALL           v4:UpdateChargeBar(v6, v7, v8)
end
end
[239] :459:GETGLOBAL      v4 = P5Charging
[241] :459:JUMPXEQKB      if v4 ~= false then -- goto #446
[242] :459:JUMPBACK       -- jump back to #207
[243] :459:RETURN         return
end
end
[245] :461:GETIMPORT      v1 = Enum.UserInputState.End
[247] :461:JUMPIFNOTEQ    if p14 ~= v1 then -- goto #446
[249] :461:GETGLOBAL      v1 = CanP5
[251] :461:JUMPXEQKB      if v1 == true then -- goto #446
[253] :462:GETGLOBAL      v1 = P5Charging
[255] :462:JUMPXEQKB      if v1 == true then -- goto #446
[256] :463:LOADB          v1 = false
[258] :463:SETGLOBAL      P5Charging = v1
[259] :464:GETUPVAL       v1 = u_v0
[262] :464:CALL           v1 = v1:GetMouse()
[264] :465:GETTABLEKS     v2 = v1.Hit
[266] :466:GETTABLEKS     v3 = v1.Target
[268] :467:GETIMPORT      v5 = script
[270] :467:GETTABLEKS     v4 = v5.RemoteEvent
[272] :467:GETGLOBAL      v6 = VTCcpkghc
[273] :467:MOVE           v7 = p13
[274] :467:LOADK          v8 = "StopCharging"
[275] :467:MOVE           v9 = v2
[276] :467:MOVE           v10 = v3
[278] :467:GETGLOBAL      v11 = P5Charge
[281] :467:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11)
[282] :468:LOADB          v4 = false
[284] :468:SETGLOBAL      CanP5 = v4
[285] :469:LOADN          v4 = 4
[287] :469:SETGLOBAL      P5Charge = v4
[289] :470:GETGLOBAL      v4 = trackB1
[291] :470:JUMPXEQKNIL    if v4 ~= nil then -- goto #297
[293] :470:GETGLOBAL      v4 = trackB1
[296] :470:CALL           v4:Stop()
end
[298] :471:GETGLOBAL      v4 = trackB2
[300] :471:JUMPXEQKNIL    if v4 ~= nil then -- goto #306
[302] :471:GETGLOBAL      v4 = trackB2
[305] :471:CALL           v4:Stop()
end
[307] :472:GETGLOBAL      v4 = trackB3
[309] :472:JUMPXEQKNIL    if v4 ~= nil then -- goto #315
[311] :472:GETGLOBAL      v4 = trackB3
[314] :472:CALL           v4:Stop()
end
[316] :473:GETGLOBAL      v4 = trackB4
[318] :473:JUMPXEQKNIL    if v4 ~= nil then -- goto #324
[320] :473:GETGLOBAL      v4 = trackB4
[323] :473:CALL           v4:Stop()
end
[324] :474:GETUPVAL       v5 = u_v0
[326] :474:GETTABLEKS     v4 = v5.Character
[327] :474:LOADK          v6 = "Humanoid"
[330] :474:CALL           v4 = v4:FindFirstChildOfClass(v6)
[331] :474:JUMPIFNOT      if v4 then -- goto #387
[332] :475:GETUPVAL       v5 = u_v0
[334] :475:GETTABLEKS     v4 = v5.Character
[335] :475:LOADK          v6 = "Humanoid"
[338] :475:CALL           v4 = v4:FindFirstChildOfClass(v6)
[340] :476:GETGLOBAL      v5 = ChargeMode
[342] :476:JUMPXEQKS      if v5 == "Right" then -- goto #366
[344] :477:GETIMPORT      v9 = script
[346] :477:GETTABLEKS     v8 = v9.Anims
[348] :477:GETTABLEKS     v7 = v8.WaveRight
[351] :477:CALL           v5 = v5:LoadAnimation(v7)
[353] :477:SETGLOBAL      trackB5 = v5
[355] :478:GETGLOBAL      v5 = trackB5
[356] :478:LOADK          v7 = 0.1
[357] :478:LOADN          v8 = 1
[358] :478:LOADN          v9 = 32
[361] :478:CALL           v5:Play(v7, v8, v9)
[362] :479:LOADK          v5 = "Left"
[364] :479:SETGLOBAL      ChargeMode = v5
[365] :479:JUMP           -- jump to #387
end
[367] :481:GETIMPORT      v9 = script
[369] :481:GETTABLEKS     v8 = v9.Anims
[371] :481:GETTABLEKS     v7 = v8.WaveLeft
[374] :481:CALL           v5 = v5:LoadAnimation(v7)
[376] :481:SETGLOBAL      trackB6 = v5
[378] :482:GETGLOBAL      v5 = trackB6
[379] :482:LOADK          v7 = 0.1
[380] :482:LOADN          v8 = 1
[381] :482:LOADN          v9 = 32
[384] :482:CALL           v5:Play(v7, v8, v9)
[385] :483:LOADK          v5 = "Right"
[387] :483:SETGLOBAL      ChargeMode = v5
[388] :486:GETUPVAL       v5 = u_v0
[390] :486:GETTABLEKS     v4 = v5.Character
[392] :486:JUMPXEQKNIL    if v4 ~= nil then -- goto #439
[393] :487:GETUPVAL       v5 = u_v0
[395] :487:GETTABLEKS     v4 = v5.Character
[396] :487:LOADK          v6 = "HumanoidRootPart"
[399] :487:CALL           v4 = v4:FindFirstChild(v6)
[400] :487:JUMPIFNOT      if v4 then -- goto #438
[401] :488:GETUPVAL       v5 = u_v0
[403] :488:GETTABLEKS     v4 = v5.Character
[404] :488:LOADK          v6 = "HumanoidRootPart"
[407] :488:CALL           v4 = v4:FindFirstChild(v6)
[408] :489:GETUPVAL       v5 = u_v0
[411] :489:CALL           v5 = v5:GetMouse()
[413] :490:GETIMPORT      v6 = CFrame.new
[415] :490:GETTABLEKS     v7 = v4.Position
[417] :490:GETTABLEKS     v11 = v5.Hit
[419] :490:GETTABLEKS     v10 = v11.p
[421] :490:GETTABLEKS     v9 = v10.X
[423] :490:GETTABLEKS     v11 = v4.Position
[425] :490:GETTABLEKS     v10 = v11.Y
[427] :490:GETTABLEKS     v13 = v5.Hit
[429] :490:GETTABLEKS     v12 = v13.p
[431] :490:GETTABLEKS     v11 = v12.Z
[434] :490:GETIMPORT      v8 = Vector3.new
[435] :490:CALL           v8 = v8(v9, v10, v11)
[436] :490:CALL           v6 = v6(v7, v8)
[438] :490:SETTABLEKS     v4.CFrame = v6
end
[440] :493:GETIMPORT      v4 = wait
[441] :493:LOADK          v5 = 0.25
[442] :493:CALL           v4(v5)
[443] :494:LOADB          v4 = true
[445] :494:SETGLOBAL      CanP5 = v4
end
end
end
end
end
[446] :497:RETURN         return
end
v5 = Power5
[429] :667:SETGLOBAL      Power5 = v5
[430] :754:DUPCLOSURE     
local function Power6(p16, p17, p18)
-- proto pool id: 15
-- num upvalues: 2
-- num inner protos: 1
-- size instructions: 273
-- size constants: 56
-- lineinfo gap: 24
-- max stack size: 16
-- is typed: false
[002] :499:GETIMPORT      v4 = script
[004] :499:GETTABLEKS     v3 = v4.Parent
[006] :499:GETTABLEKS     v2 = v3.Parent
[008] :499:GETTABLEKS     v1 = v2.DF_Disabled
[010] :499:GETTABLEKS     v0 = v1.Value
[012] :499:JUMPXEQKB      if v0 == true then -- goto #14
[013] :499:RETURN         return
end
[015] :500:GETIMPORT      v4 = script
[017] :500:GETTABLEKS     v3 = v4.Parent
[019] :500:GETTABLEKS     v2 = v3.Parent
[021] :500:GETTABLEKS     v1 = v2.Projecting
[023] :500:GETTABLEKS     v0 = v1.Value
[025] :500:JUMPXEQKB      if v0 == true then -- goto #27
[026] :500:RETURN         return
end
[027] :501:GETUPVAL       v2 = u_v1
[029] :501:GETTABLEKS     v1 = v2.Data
[031] :501:GETIMPORT      v6 = script
[033] :501:GETTABLEKS     v5 = v6.Power6
[035] :501:GETTABLEKS     v4 = v5.StatType
[037] :501:GETTABLEKS     v3 = v4.Value
[040] :501:CALL           v1 = v1:FindFirstChild(v3)
[042] :501:GETTABLEKS     v0 = v1.Value
[044] :502:GETIMPORT      v2 = script
[045] :502:LOADK          v4 = "Power6"
[048] :502:CALL           v2 = v2:FindFirstChild(v4)
[050] :502:GETTABLEKS     v1 = v2.Value
[052] :502:JUMPIFNOTLT    if v0 < v1 then -- goto #54
[053] :502:RETURN         return
end
[055] :503:GETGLOBAL      v1 = AbilityActivated
[056] :503:CALL           v1()
[058] :504:GETIMPORT      v1 = Enum.UserInputState.Begin
[060] :504:JUMPIFNOTEQ    if p17 ~= v1 then -- goto #204
[062] :504:GETGLOBAL      v1 = CanP6
[064] :504:JUMPXEQKB      if v1 == true then -- goto #204
[066] :506:GETGLOBAL      v1 = P1Charging
[068] :506:JUMPXEQKB      if v1 ~= true then -- goto #85
[070] :507:GETGLOBAL      v1 = P2Charging
[072] :507:JUMPXEQKB      if v1 ~= true then -- goto #85
[074] :508:GETGLOBAL      v1 = P3Charging
[076] :508:JUMPXEQKB      if v1 ~= true then -- goto #85
[078] :509:GETGLOBAL      v1 = P4Charging
[080] :509:JUMPXEQKB      if v1 ~= true then -- goto #85
[082] :510:GETGLOBAL      v1 = P5Charging
[084] :510:JUMPXEQKB      if v1 == true then -- goto #86
end
end
end
end
[085] :510:RETURN         return
end
[087] :512:GETGLOBAL      v1 = P6Charging
[089] :512:JUMPXEQKB      if v1 == false then -- goto #273
[090] :513:LOADB          v1 = true
[092] :513:SETGLOBAL      P6Charging = v1
[093] :514:GETUPVAL       v1 = u_v0
[096] :514:CALL           v1 = v1:GetMouse()
[098] :515:GETTABLEKS     v2 = v1.Hit
[100] :516:GETTABLEKS     v3 = v1.Target
[102] :517:GETIMPORT      v5 = script
[104] :517:GETTABLEKS     v4 = v5.RemoteEvent
[106] :517:GETGLOBAL      v6 = VTCcpkghc
[107] :517:MOVE           v7 = p16
[108] :517:LOADK          v8 = "StartCharging"
[109] :517:MOVE           v9 = v2
[110] :517:MOVE           v10 = v3
[111] :517:LOADNIL        v11 = nil
[113] :517:GETGLOBAL      v12 = ChargeMode
[116] :517:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11, v12)
[117] :518:GETUPVAL       v5 = u_v0
[119] :518:GETTABLEKS     v4 = v5.Character
[120] :518:LOADK          v6 = "Humanoid"
[123] :518:CALL           v4 = v4:FindFirstChildOfClass(v6)
[124] :518:JUMPIFNOT      if v4 then -- goto #166
[125] :519:GETUPVAL       v5 = u_v0
[127] :519:GETTABLEKS     v4 = v5.Character
[128] :519:LOADK          v6 = "Humanoid"
[131] :519:CALL           v4 = v4:FindFirstChildOfClass(v6)
[133] :520:GETIMPORT      v9 = script
[135] :520:GETTABLEKS     v8 = v9.Anims
[137] :520:GETTABLEKS     v7 = v8.FullCharge
[140] :520:CALL           v5 = v5:LoadAnimation(v7)
[142] :520:SETGLOBAL      trackB3 = v5
[144] :521:GETIMPORT      v9 = script
[146] :521:GETTABLEKS     v8 = v9.Anims
[148] :521:GETTABLEKS     v7 = v8.FullCharged
[151] :521:CALL           v5 = v5:LoadAnimation(v7)
[153] :521:SETGLOBAL      trackB4 = v5
[155] :522:GETGLOBAL      v6 = trackB3
[157] :522:GETTABLEKS     v5 = v6.Stopped
[158] :522:DUPCLOSURE     v7 = function()
-- proto pool id: 14
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 10
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :523:GETGLOBAL      v0 = P6Charging
[004] :523:JUMPXEQKB      if v0 == true then -- goto #10
[006] :524:GETGLOBAL      v0 = trackB4
[009] :524:CALL           v0:Play()
end
[010] :526:RETURN         return
end
[161] :522:CALL           v5:Connect(v7)
[163] :527:GETGLOBAL      v5 = trackB3
[166] :527:CALL           v5:Play()
[168] :530:GETIMPORT      v4 = wait
[169] :530:CALL           v4()
[171] :531:GETGLOBAL      v4 = P6Charge
[172] :531:LOADN          v5 = 100
[174] :531:JUMPIFNOTLT    if v4 < v5 then -- goto #198
[176] :531:GETGLOBAL      v4 = CanP6
[178] :531:JUMPXEQKB      if v4 == true then -- goto #198
[180] :532:GETGLOBAL      v5 = P6Charge
[181] :532:ADDK           v4 = v5 + 1
[183] :532:SETGLOBAL      P6Charge = v4
[185] :533:GETGLOBAL      v4 = ChargeModule
[187] :533:GETIMPORT      v9 = script
[189] :533:GETTABLEKS     v7 = v9.Name
[190] :533:LOADK          v8 = 6
[191] :533:CONCAT         v6 = v7 .. v8
[193] :533:GETGLOBAL      v7 = P6Charge
[194] :533:LOADN          v8 = 100
[197] :533:CALL           v4:UpdateChargeBar(v6, v7, v8)
end
end
[199] :535:GETGLOBAL      v4 = P6Charging
[201] :535:JUMPXEQKB      if v4 ~= false then -- goto #273
[202] :535:JUMPBACK       -- jump back to #167
[203] :535:RETURN         return
end
end
[205] :537:GETIMPORT      v1 = Enum.UserInputState.End
[207] :537:JUMPIFNOTEQ    if p17 ~= v1 then -- goto #273
[209] :537:GETGLOBAL      v1 = CanP6
[211] :537:JUMPXEQKB      if v1 == true then -- goto #273
[213] :538:GETGLOBAL      v1 = P6Charging
[215] :538:JUMPXEQKB      if v1 == true then -- goto #273
[216] :539:LOADB          v1 = false
[218] :539:SETGLOBAL      P6Charging = v1
[219] :540:GETUPVAL       v1 = u_v0
[222] :540:CALL           v1 = v1:GetMouse()
[224] :541:GETTABLEKS     v2 = v1.Hit
[226] :542:GETTABLEKS     v3 = v1.Target
[228] :543:GETIMPORT      v5 = script
[230] :543:GETTABLEKS     v4 = v5.RemoteEvent
[232] :543:GETGLOBAL      v6 = VTCcpkghc
[233] :543:MOVE           v7 = p16
[234] :543:LOADK          v8 = "StopCharging"
[235] :543:MOVE           v9 = v2
[236] :543:MOVE           v10 = v3
[238] :543:GETGLOBAL      v11 = P6Charge
[241] :543:CALL           v4:FireServer(v6, v7, v8, v9, v10, v11)
[242] :544:LOADB          v4 = false
[244] :544:SETGLOBAL      CanP6 = v4
[245] :545:LOADN          v4 = 4
[247] :545:SETGLOBAL      P6Charge = v4
[249] :548:GETGLOBAL      v4 = trackB3
[251] :548:JUMPXEQKNIL    if v4 ~= nil then -- goto #257
[253] :548:GETGLOBAL      v4 = trackB3
[256] :548:CALL           v4:Stop()
end
[258] :549:GETGLOBAL      v4 = trackB4
[260] :549:JUMPXEQKNIL    if v4 ~= nil then -- goto #266
[262] :549:GETGLOBAL      v4 = trackB4
[265] :549:CALL           v4:Stop()
end
[267] :550:GETIMPORT      v4 = wait
[268] :550:LOADK          v5 = 0.25
[269] :550:CALL           v4(v5)
[270] :551:LOADB          v4 = true
[272] :551:SETGLOBAL      CanP6 = v4
end
end
end
end
end
[273] :554:RETURN         return
end
v5 = Power6
[434] :1010:SETGLOBAL      Power6 = v5
[436] :1068:GETIMPORT      v5 = wait
[437] :1068:CALL           v5()
[439] :1068:GETIMPORT      v7 = script
[441] :1068:GETTABLEKS     v6 = v7.Parent
[443] :1068:GETTABLEKS     v5 = v6.Parent
[444] :1068:LOADK          v7 = "DamageScript"
[447] :1068:CALL           v5 = v5:FindFirstChild(v7)
[448] :1068:JUMPIF         if not v5 then -- goto #449
end
[449] :1068:JUMPBACK       -- jump back to #435
[451] :1069:GETIMPORT      v5 = wait
[452] :1069:CALL           v5()
[454] :1069:GETIMPORT      v9 = script
[456] :1069:GETTABLEKS     v8 = v9.Parent
[458] :1069:GETTABLEKS     v7 = v8.Parent
[460] :1069:GETTABLEKS     v6 = v7.DamageScript
[462] :1069:GETTABLEKS     v5 = v6.Disabled
[464] :1069:JUMPXEQKB      if v5 ~= false then -- goto #466
[465] :1069:JUMPBACK       -- jump back to #450
end
[466] :1070:LOADNIL        v5 = nil
[468] :1070:SETGLOBAL      Button1 = v5
[469] :1071:LOADNIL        v5 = nil
[471] :1071:SETGLOBAL      Button2 = v5
[472] :1072:LOADNIL        v5 = nil
[474] :1072:SETGLOBAL      Button3 = v5
[475] :1073:LOADNIL        v5 = nil
[477] :1073:SETGLOBAL      Button4 = v5
[478] :1074:LOADNIL        v5 = nil
[480] :1074:SETGLOBAL      Button5 = v5
[481] :1075:LOADNIL        v5 = nil
[483] :1075:SETGLOBAL      Button6 = v5
[484] :1076:LOADNIL        v5 = nil
[486] :1076:SETGLOBAL      Button7 = v5
[487] :1077:LOADNIL        v5 = nil
[489] :1077:SETGLOBAL      Button8 = v5
[490] :1078:LOADNIL        v5 = nil
[492] :1078:SETGLOBAL      Button9 = v5
[493] :1079:LOADNIL        v5 = nil
[495] :1079:SETGLOBAL      Button10 = v5
[496] :1080:LOADNIL        v5 = nil
[498] :1080:SETGLOBAL      Button11 = v5
[499] :1081:LOADNIL        v5 = nil
[501] :1081:SETGLOBAL      Button12 = v5
[502] :1082:LOADNIL        v5 = nil
[504] :1082:SETGLOBAL      SP = v5
[505] :1083:DUPCLOSURE     
local function NewSP()
-- proto pool id: 16
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 183
-- size constants: 17
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :572:GETGLOBAL      v0 = Button1
[004] :572:JUMPXEQKNIL    if v0 ~= nil then -- goto #15
[006] :572:GETGLOBAL      v0 = Button1
[008] :572:GETIMPORT      v1 = Color3.fromRGB
[009] :572:LOADN          v2 = 255
[010] :572:LOADN          v3 = 255
[011] :572:LOADN          v4 = 255
[012] :572:CALL           v1 = v1(v2, v3, v4)
[014] :572:SETTABLEKS     v0.ImageColor3 = v1
end
[016] :573:GETGLOBAL      v0 = Button2
[018] :573:JUMPXEQKNIL    if v0 ~= nil then -- goto #29
[020] :573:GETGLOBAL      v0 = Button2
[022] :573:GETIMPORT      v1 = Color3.fromRGB
[023] :573:LOADN          v2 = 255
[024] :573:LOADN          v3 = 255
[025] :573:LOADN          v4 = 255
[026] :573:CALL           v1 = v1(v2, v3, v4)
[028] :573:SETTABLEKS     v0.ImageColor3 = v1
end
[030] :574:GETGLOBAL      v0 = Button3
[032] :574:JUMPXEQKNIL    if v0 ~= nil then -- goto #43
[034] :574:GETGLOBAL      v0 = Button3
[036] :574:GETIMPORT      v1 = Color3.fromRGB
[037] :574:LOADN          v2 = 255
[038] :574:LOADN          v3 = 255
[039] :574:LOADN          v4 = 255
[040] :574:CALL           v1 = v1(v2, v3, v4)
[042] :574:SETTABLEKS     v0.ImageColor3 = v1
end
[044] :575:GETGLOBAL      v0 = Button4
[046] :575:JUMPXEQKNIL    if v0 ~= nil then -- goto #57
[048] :575:GETGLOBAL      v0 = Button4
[050] :575:GETIMPORT      v1 = Color3.fromRGB
[051] :575:LOADN          v2 = 255
[052] :575:LOADN          v3 = 255
[053] :575:LOADN          v4 = 255
[054] :575:CALL           v1 = v1(v2, v3, v4)
[056] :575:SETTABLEKS     v0.ImageColor3 = v1
end
[058] :576:GETGLOBAL      v0 = Button5
[060] :576:JUMPXEQKNIL    if v0 ~= nil then -- goto #71
[062] :576:GETGLOBAL      v0 = Button5
[064] :576:GETIMPORT      v1 = Color3.fromRGB
[065] :576:LOADN          v2 = 255
[066] :576:LOADN          v3 = 255
[067] :576:LOADN          v4 = 255
[068] :576:CALL           v1 = v1(v2, v3, v4)
[070] :576:SETTABLEKS     v0.ImageColor3 = v1
end
[072] :577:GETGLOBAL      v0 = Button6
[074] :577:JUMPXEQKNIL    if v0 ~= nil then -- goto #85
[076] :577:GETGLOBAL      v0 = Button6
[078] :577:GETIMPORT      v1 = Color3.fromRGB
[079] :577:LOADN          v2 = 255
[080] :577:LOADN          v3 = 255
[081] :577:LOADN          v4 = 255
[082] :577:CALL           v1 = v1(v2, v3, v4)
[084] :577:SETTABLEKS     v0.ImageColor3 = v1
end
[086] :578:GETGLOBAL      v0 = Button7
[088] :578:JUMPXEQKNIL    if v0 ~= nil then -- goto #99
[090] :578:GETGLOBAL      v0 = Button7
[092] :578:GETIMPORT      v1 = Color3.fromRGB
[093] :578:LOADN          v2 = 255
[094] :578:LOADN          v3 = 255
[095] :578:LOADN          v4 = 255
[096] :578:CALL           v1 = v1(v2, v3, v4)
[098] :578:SETTABLEKS     v0.ImageColor3 = v1
end
[100] :579:GETGLOBAL      v0 = Button8
[102] :579:JUMPXEQKNIL    if v0 ~= nil then -- goto #113
[104] :579:GETGLOBAL      v0 = Button8
[106] :579:GETIMPORT      v1 = Color3.fromRGB
[107] :579:LOADN          v2 = 255
[108] :579:LOADN          v3 = 255
[109] :579:LOADN          v4 = 255
[110] :579:CALL           v1 = v1(v2, v3, v4)
[112] :579:SETTABLEKS     v0.ImageColor3 = v1
end
[114] :580:GETGLOBAL      v0 = Button9
[116] :580:JUMPXEQKNIL    if v0 ~= nil then -- goto #127
[118] :580:GETGLOBAL      v0 = Button9
[120] :580:GETIMPORT      v1 = Color3.fromRGB
[121] :580:LOADN          v2 = 255
[122] :580:LOADN          v3 = 255
[123] :580:LOADN          v4 = 255
[124] :580:CALL           v1 = v1(v2, v3, v4)
[126] :580:SETTABLEKS     v0.ImageColor3 = v1
end
[128] :581:GETGLOBAL      v0 = Button10
[130] :581:JUMPXEQKNIL    if v0 ~= nil then -- goto #141
[132] :581:GETGLOBAL      v0 = Button10
[134] :581:GETIMPORT      v1 = Color3.fromRGB
[135] :581:LOADN          v2 = 255
[136] :581:LOADN          v3 = 255
[137] :581:LOADN          v4 = 255
[138] :581:CALL           v1 = v1(v2, v3, v4)
[140] :581:SETTABLEKS     v0.ImageColor3 = v1
end
[142] :582:GETGLOBAL      v0 = Button11
[144] :582:JUMPXEQKNIL    if v0 ~= nil then -- goto #155
[146] :582:GETGLOBAL      v0 = Button11
[148] :582:GETIMPORT      v1 = Color3.fromRGB
[149] :582:LOADN          v2 = 255
[150] :582:LOADN          v3 = 255
[151] :582:LOADN          v4 = 255
[152] :582:CALL           v1 = v1(v2, v3, v4)
[154] :582:SETTABLEKS     v0.ImageColor3 = v1
end
[156] :583:GETGLOBAL      v0 = Button12
[158] :583:JUMPXEQKNIL    if v0 ~= nil then -- goto #169
[160] :583:GETGLOBAL      v0 = Button12
[162] :583:GETIMPORT      v1 = Color3.fromRGB
[163] :583:LOADN          v2 = 255
[164] :583:LOADN          v3 = 255
[165] :583:LOADN          v4 = 255
[166] :583:CALL           v1 = v1(v2, v3, v4)
[168] :583:SETTABLEKS     v0.ImageColor3 = v1
end
[170] :584:GETGLOBAL      v0 = SP
[172] :584:JUMPXEQKNIL    if v0 ~= nil then -- goto #183
[174] :585:GETGLOBAL      v0 = SP
[176] :585:GETIMPORT      v1 = Color3.fromRGB
[177] :585:LOADN          v2 = 127
[178] :585:LOADN          v3 = 255
[179] :585:LOADN          v4 = 127
[180] :585:CALL           v1 = v1(v2, v3, v4)
[182] :585:SETTABLEKS     v0.ImageColor3 = v1
end
[183] :587:RETURN         return
end
v5 = NewSP
[507] :1083:SETGLOBAL      NewSP = v5
[509] :1100:GETIMPORT      v6 = game
[510] :1100:LOADK          v8 = "UserInputService"
[513] :1100:CALL           v6 = v6:GetService(v8)
[515] :1100:GETTABLEKS     v5 = v6.TouchStarted
[516] :1100:DUPCLOSURE     v7 = function(p19, p20)
-- proto pool id: 17
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :589:JUMPXEQKB      if p20 == false then -- goto #223
[004] :589:GETGLOBAL      v0 = SP
[006] :589:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :590:GETGLOBAL      v0 = SP
[010] :590:GETGLOBAL      v1 = Button1
[012] :590:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :590:GETGLOBAL      v0 = Power1
[016] :590:GETIMPORT      v4 = script
[018] :590:GETTABLEKS     v2 = v4.Name
[019] :590:LOADK          v3 = "Power1"
[020] :590:CONCAT         v1 = v2 .. v3
[022] :590:GETIMPORT      v2 = Enum.UserInputState.Begin
[023] :590:LOADNIL        v3 = nil
[024] :590:CALL           v0(v1, v2, v3)
end
[026] :591:GETGLOBAL      v0 = SP
[028] :591:GETGLOBAL      v1 = Button2
[030] :591:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :591:GETGLOBAL      v0 = Power2
[034] :591:GETIMPORT      v4 = script
[036] :591:GETTABLEKS     v2 = v4.Name
[037] :591:LOADK          v3 = "Power2"
[038] :591:CONCAT         v1 = v2 .. v3
[040] :591:GETIMPORT      v2 = Enum.UserInputState.Begin
[041] :591:LOADNIL        v3 = nil
[042] :591:CALL           v0(v1, v2, v3)
end
[044] :592:GETGLOBAL      v0 = SP
[046] :592:GETGLOBAL      v1 = Button3
[048] :592:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :592:GETGLOBAL      v0 = Power3
[052] :592:GETIMPORT      v4 = script
[054] :592:GETTABLEKS     v2 = v4.Name
[055] :592:LOADK          v3 = "Power3"
[056] :592:CONCAT         v1 = v2 .. v3
[058] :592:GETIMPORT      v2 = Enum.UserInputState.Begin
[059] :592:LOADNIL        v3 = nil
[060] :592:CALL           v0(v1, v2, v3)
end
[062] :593:GETGLOBAL      v0 = SP
[064] :593:GETGLOBAL      v1 = Button4
[066] :593:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :593:GETGLOBAL      v0 = Power4
[070] :593:GETIMPORT      v4 = script
[072] :593:GETTABLEKS     v2 = v4.Name
[073] :593:LOADK          v3 = "Power4"
[074] :593:CONCAT         v1 = v2 .. v3
[076] :593:GETIMPORT      v2 = Enum.UserInputState.Begin
[077] :593:LOADNIL        v3 = nil
[078] :593:CALL           v0(v1, v2, v3)
end
[080] :594:GETGLOBAL      v0 = SP
[082] :594:GETGLOBAL      v1 = Button5
[084] :594:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :594:GETGLOBAL      v0 = Power5
[088] :594:GETIMPORT      v4 = script
[090] :594:GETTABLEKS     v2 = v4.Name
[091] :594:LOADK          v3 = "Power5"
[092] :594:CONCAT         v1 = v2 .. v3
[094] :594:GETIMPORT      v2 = Enum.UserInputState.Begin
[095] :594:LOADNIL        v3 = nil
[096] :594:CALL           v0(v1, v2, v3)
end
[098] :595:GETGLOBAL      v0 = SP
[100] :595:GETGLOBAL      v1 = Button6
[102] :595:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :595:GETGLOBAL      v0 = Power6
[106] :595:GETIMPORT      v4 = script
[108] :595:GETTABLEKS     v2 = v4.Name
[109] :595:LOADK          v3 = "Power6"
[110] :595:CONCAT         v1 = v2 .. v3
[112] :595:GETIMPORT      v2 = Enum.UserInputState.Begin
[113] :595:LOADNIL        v3 = nil
[114] :595:CALL           v0(v1, v2, v3)
end
[116] :596:GETGLOBAL      v0 = SP
[118] :596:GETGLOBAL      v1 = Button7
[120] :596:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :596:GETGLOBAL      v0 = Power1
[124] :596:GETIMPORT      v4 = script
[126] :596:GETTABLEKS     v2 = v4.Name
[127] :596:LOADK          v3 = "Power7"
[128] :596:CONCAT         v1 = v2 .. v3
[130] :596:GETIMPORT      v2 = Enum.UserInputState.Begin
[131] :596:LOADNIL        v3 = nil
[132] :596:CALL           v0(v1, v2, v3)
end
[134] :597:GETGLOBAL      v0 = SP
[136] :597:GETGLOBAL      v1 = Button8
[138] :597:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :597:GETGLOBAL      v0 = Power2
[142] :597:GETIMPORT      v4 = script
[144] :597:GETTABLEKS     v2 = v4.Name
[145] :597:LOADK          v3 = "Power8"
[146] :597:CONCAT         v1 = v2 .. v3
[148] :597:GETIMPORT      v2 = Enum.UserInputState.Begin
[149] :597:LOADNIL        v3 = nil
[150] :597:CALL           v0(v1, v2, v3)
end
[152] :598:GETGLOBAL      v0 = SP
[154] :598:GETGLOBAL      v1 = Button9
[156] :598:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :598:GETGLOBAL      v0 = Power3
[160] :598:GETIMPORT      v4 = script
[162] :598:GETTABLEKS     v2 = v4.Name
[163] :598:LOADK          v3 = "Power9"
[164] :598:CONCAT         v1 = v2 .. v3
[166] :598:GETIMPORT      v2 = Enum.UserInputState.Begin
[167] :598:LOADNIL        v3 = nil
[168] :598:CALL           v0(v1, v2, v3)
end
[170] :599:GETGLOBAL      v0 = SP
[172] :599:GETGLOBAL      v1 = Button10
[174] :599:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :599:GETGLOBAL      v0 = Power4
[178] :599:GETIMPORT      v4 = script
[180] :599:GETTABLEKS     v2 = v4.Name
[181] :599:LOADK          v3 = "Power10"
[182] :599:CONCAT         v1 = v2 .. v3
[184] :599:GETIMPORT      v2 = Enum.UserInputState.Begin
[185] :599:LOADNIL        v3 = nil
[186] :599:CALL           v0(v1, v2, v3)
end
[188] :600:GETGLOBAL      v0 = SP
[190] :600:GETGLOBAL      v1 = Button11
[192] :600:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :600:GETGLOBAL      v0 = Power5
[196] :600:GETIMPORT      v4 = script
[198] :600:GETTABLEKS     v2 = v4.Name
[199] :600:LOADK          v3 = "Power11"
[200] :600:CONCAT         v1 = v2 .. v3
[202] :600:GETIMPORT      v2 = Enum.UserInputState.Begin
[203] :600:LOADNIL        v3 = nil
[204] :600:CALL           v0(v1, v2, v3)
end
[206] :601:GETGLOBAL      v0 = SP
[208] :601:GETGLOBAL      v1 = Button12
[210] :601:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :601:GETGLOBAL      v0 = Power6
[214] :601:GETIMPORT      v4 = script
[216] :601:GETTABLEKS     v2 = v4.Name
[217] :601:LOADK          v3 = "Power12"
[218] :601:CONCAT         v1 = v2 .. v3
[220] :601:GETIMPORT      v2 = Enum.UserInputState.Begin
[221] :601:LOADNIL        v3 = nil
[222] :601:CALL           v0(v1, v2, v3)
end
end
end
[223] :603:RETURN         return
end
[519] :1100:CALL           v5:Connect(v7)
[521] :1116:GETIMPORT      v6 = game
[522] :1116:LOADK          v8 = "UserInputService"
[525] :1116:CALL           v6 = v6:GetService(v8)
[527] :1116:GETTABLEKS     v5 = v6.TouchEnded
[528] :1116:DUPCLOSURE     v7 = function(p21, p22)
-- proto pool id: 18
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :605:JUMPXEQKB      if p22 == false then -- goto #223
[004] :605:GETGLOBAL      v0 = SP
[006] :605:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :606:GETGLOBAL      v0 = SP
[010] :606:GETGLOBAL      v1 = Button1
[012] :606:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :606:GETGLOBAL      v0 = Power1
[016] :606:GETIMPORT      v4 = script
[018] :606:GETTABLEKS     v2 = v4.Name
[019] :606:LOADK          v3 = "Power1"
[020] :606:CONCAT         v1 = v2 .. v3
[022] :606:GETIMPORT      v2 = Enum.UserInputState.End
[023] :606:LOADNIL        v3 = nil
[024] :606:CALL           v0(v1, v2, v3)
end
[026] :607:GETGLOBAL      v0 = SP
[028] :607:GETGLOBAL      v1 = Button2
[030] :607:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :607:GETGLOBAL      v0 = Power2
[034] :607:GETIMPORT      v4 = script
[036] :607:GETTABLEKS     v2 = v4.Name
[037] :607:LOADK          v3 = "Power2"
[038] :607:CONCAT         v1 = v2 .. v3
[040] :607:GETIMPORT      v2 = Enum.UserInputState.End
[041] :607:LOADNIL        v3 = nil
[042] :607:CALL           v0(v1, v2, v3)
end
[044] :608:GETGLOBAL      v0 = SP
[046] :608:GETGLOBAL      v1 = Button3
[048] :608:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :608:GETGLOBAL      v0 = Power3
[052] :608:GETIMPORT      v4 = script
[054] :608:GETTABLEKS     v2 = v4.Name
[055] :608:LOADK          v3 = "Power3"
[056] :608:CONCAT         v1 = v2 .. v3
[058] :608:GETIMPORT      v2 = Enum.UserInputState.End
[059] :608:LOADNIL        v3 = nil
[060] :608:CALL           v0(v1, v2, v3)
end
[062] :609:GETGLOBAL      v0 = SP
[064] :609:GETGLOBAL      v1 = Button4
[066] :609:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :609:GETGLOBAL      v0 = Power4
[070] :609:GETIMPORT      v4 = script
[072] :609:GETTABLEKS     v2 = v4.Name
[073] :609:LOADK          v3 = "Power4"
[074] :609:CONCAT         v1 = v2 .. v3
[076] :609:GETIMPORT      v2 = Enum.UserInputState.End
[077] :609:LOADNIL        v3 = nil
[078] :609:CALL           v0(v1, v2, v3)
end
[080] :610:GETGLOBAL      v0 = SP
[082] :610:GETGLOBAL      v1 = Button5
[084] :610:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :610:GETGLOBAL      v0 = Power5
[088] :610:GETIMPORT      v4 = script
[090] :610:GETTABLEKS     v2 = v4.Name
[091] :610:LOADK          v3 = "Power5"
[092] :610:CONCAT         v1 = v2 .. v3
[094] :610:GETIMPORT      v2 = Enum.UserInputState.End
[095] :610:LOADNIL        v3 = nil
[096] :610:CALL           v0(v1, v2, v3)
end
[098] :611:GETGLOBAL      v0 = SP
[100] :611:GETGLOBAL      v1 = Button6
[102] :611:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :611:GETGLOBAL      v0 = Power6
[106] :611:GETIMPORT      v4 = script
[108] :611:GETTABLEKS     v2 = v4.Name
[109] :611:LOADK          v3 = "Power6"
[110] :611:CONCAT         v1 = v2 .. v3
[112] :611:GETIMPORT      v2 = Enum.UserInputState.End
[113] :611:LOADNIL        v3 = nil
[114] :611:CALL           v0(v1, v2, v3)
end
[116] :612:GETGLOBAL      v0 = SP
[118] :612:GETGLOBAL      v1 = Button7
[120] :612:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :612:GETGLOBAL      v0 = Power1
[124] :612:GETIMPORT      v4 = script
[126] :612:GETTABLEKS     v2 = v4.Name
[127] :612:LOADK          v3 = "Power7"
[128] :612:CONCAT         v1 = v2 .. v3
[130] :612:GETIMPORT      v2 = Enum.UserInputState.End
[131] :612:LOADNIL        v3 = nil
[132] :612:CALL           v0(v1, v2, v3)
end
[134] :613:GETGLOBAL      v0 = SP
[136] :613:GETGLOBAL      v1 = Button8
[138] :613:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :613:GETGLOBAL      v0 = Power2
[142] :613:GETIMPORT      v4 = script
[144] :613:GETTABLEKS     v2 = v4.Name
[145] :613:LOADK          v3 = "Power8"
[146] :613:CONCAT         v1 = v2 .. v3
[148] :613:GETIMPORT      v2 = Enum.UserInputState.End
[149] :613:LOADNIL        v3 = nil
[150] :613:CALL           v0(v1, v2, v3)
end
[152] :614:GETGLOBAL      v0 = SP
[154] :614:GETGLOBAL      v1 = Button9
[156] :614:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :614:GETGLOBAL      v0 = Power3
[160] :614:GETIMPORT      v4 = script
[162] :614:GETTABLEKS     v2 = v4.Name
[163] :614:LOADK          v3 = "Power9"
[164] :614:CONCAT         v1 = v2 .. v3
[166] :614:GETIMPORT      v2 = Enum.UserInputState.End
[167] :614:LOADNIL        v3 = nil
[168] :614:CALL           v0(v1, v2, v3)
end
[170] :615:GETGLOBAL      v0 = SP
[172] :615:GETGLOBAL      v1 = Button10
[174] :615:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :615:GETGLOBAL      v0 = Power4
[178] :615:GETIMPORT      v4 = script
[180] :615:GETTABLEKS     v2 = v4.Name
[181] :615:LOADK          v3 = "Power10"
[182] :615:CONCAT         v1 = v2 .. v3
[184] :615:GETIMPORT      v2 = Enum.UserInputState.End
[185] :615:LOADNIL        v3 = nil
[186] :615:CALL           v0(v1, v2, v3)
end
[188] :616:GETGLOBAL      v0 = SP
[190] :616:GETGLOBAL      v1 = Button11
[192] :616:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :616:GETGLOBAL      v0 = Power5
[196] :616:GETIMPORT      v4 = script
[198] :616:GETTABLEKS     v2 = v4.Name
[199] :616:LOADK          v3 = "Power11"
[200] :616:CONCAT         v1 = v2 .. v3
[202] :616:GETIMPORT      v2 = Enum.UserInputState.End
[203] :616:LOADNIL        v3 = nil
[204] :616:CALL           v0(v1, v2, v3)
end
[206] :617:GETGLOBAL      v0 = SP
[208] :617:GETGLOBAL      v1 = Button12
[210] :617:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :617:GETGLOBAL      v0 = Power6
[214] :617:GETIMPORT      v4 = script
[216] :617:GETTABLEKS     v2 = v4.Name
[217] :617:LOADK          v3 = "Power12"
[218] :617:CONCAT         v1 = v2 .. v3
[220] :617:GETIMPORT      v2 = Enum.UserInputState.End
[221] :617:LOADNIL        v3 = nil
[222] :617:CALL           v0(v1, v2, v3)
end
end
end
[223] :619:RETURN         return
end
[531] :1116:CALL           v5:Connect(v7)
[532] :1132:DUPCLOSURE     
local function Update(p23, p24)
-- proto pool id: 31
-- num upvalues: 2
-- num inner protos: 12
-- size instructions: 1108
-- size constants: 79
-- lineinfo gap: 24
-- max stack size: 15
-- is typed: false
[001] :621:GETUPVAL       v1 = u_v1
[003] :621:GETTABLEKS     v0 = v1.Data
[004] :621:LOADK          v2 = "DevilFruit"
[007] :621:CALL           v0 = v0:FindFirstChild(v2)
[008] :622:GETUPVAL       v2 = u_v1
[010] :622:GETTABLEKS     v1 = v2.Data
[011] :622:LOADK          v3 = "DevilFruit2"
[014] :622:CALL           v1 = v1:FindFirstChild(v3)
[016] :623:JUMPXEQKN      if p23 == 1 then -- goto #562
[018] :624:GETIMPORT      v2 = game
[019] :624:LOADK          v4 = "ContextActionService"
[022] :624:CALL           v2 = v2:GetService(v4)
[024] :624:GETIMPORT      v7 = script
[026] :624:GETTABLEKS     v5 = v7.Name
[027] :624:LOADK          v6 = "Power1"
[028] :624:CONCAT         v4 = v5 .. v6
[031] :624:CALL           v2:UnbindAction(v4)
[033] :625:GETIMPORT      v2 = game
[034] :625:LOADK          v4 = "ContextActionService"
[037] :625:CALL           v2 = v2:GetService(v4)
[039] :625:GETIMPORT      v7 = script
[041] :625:GETTABLEKS     v5 = v7.Name
[042] :625:LOADK          v6 = "Power2"
[043] :625:CONCAT         v4 = v5 .. v6
[046] :625:CALL           v2:UnbindAction(v4)
[048] :626:GETIMPORT      v2 = game
[049] :626:LOADK          v4 = "ContextActionService"
[052] :626:CALL           v2 = v2:GetService(v4)
[054] :626:GETIMPORT      v7 = script
[056] :626:GETTABLEKS     v5 = v7.Name
[057] :626:LOADK          v6 = "Power3"
[058] :626:CONCAT         v4 = v5 .. v6
[061] :626:CALL           v2:UnbindAction(v4)
[063] :627:GETIMPORT      v2 = game
[064] :627:LOADK          v4 = "ContextActionService"
[067] :627:CALL           v2 = v2:GetService(v4)
[069] :627:GETIMPORT      v7 = script
[071] :627:GETTABLEKS     v5 = v7.Name
[072] :627:LOADK          v6 = "Power4"
[073] :627:CONCAT         v4 = v5 .. v6
[076] :627:CALL           v2:UnbindAction(v4)
[078] :628:GETIMPORT      v2 = game
[079] :628:LOADK          v4 = "ContextActionService"
[082] :628:CALL           v2 = v2:GetService(v4)
[084] :628:GETIMPORT      v7 = script
[086] :628:GETTABLEKS     v5 = v7.Name
[087] :628:LOADK          v6 = "Power5"
[088] :628:CONCAT         v4 = v5 .. v6
[091] :628:CALL           v2:UnbindAction(v4)
[093] :629:GETIMPORT      v2 = game
[094] :629:LOADK          v4 = "ContextActionService"
[097] :629:CALL           v2 = v2:GetService(v4)
[099] :629:GETIMPORT      v7 = script
[101] :629:GETTABLEKS     v5 = v7.Name
[102] :629:LOADK          v6 = "Power6"
[103] :629:CONCAT         v4 = v5 .. v6
[106] :629:CALL           v2:UnbindAction(v4)
[108] :630:GETGLOBAL      v2 = Button1
[110] :630:JUMPXEQKNIL    if v2 ~= nil then -- goto #116
[112] :630:GETGLOBAL      v2 = Button1
[115] :630:CALL           v2:Destroy()
end
[117] :631:GETGLOBAL      v2 = Button2
[119] :631:JUMPXEQKNIL    if v2 ~= nil then -- goto #125
[121] :631:GETGLOBAL      v2 = Button2
[124] :631:CALL           v2:Destroy()
end
[126] :632:GETGLOBAL      v2 = Button3
[128] :632:JUMPXEQKNIL    if v2 ~= nil then -- goto #134
[130] :632:GETGLOBAL      v2 = Button3
[133] :632:CALL           v2:Destroy()
end
[135] :633:GETGLOBAL      v2 = Button4
[137] :633:JUMPXEQKNIL    if v2 ~= nil then -- goto #143
[139] :633:GETGLOBAL      v2 = Button4
[142] :633:CALL           v2:Destroy()
end
[144] :634:GETGLOBAL      v2 = Button5
[146] :634:JUMPXEQKNIL    if v2 ~= nil then -- goto #152
[148] :634:GETGLOBAL      v2 = Button5
[151] :634:CALL           v2:Destroy()
end
[153] :635:GETGLOBAL      v2 = Button6
[155] :635:JUMPXEQKNIL    if v2 ~= nil then -- goto #161
[157] :635:GETGLOBAL      v2 = Button6
[160] :635:CALL           v2:Destroy()
end
[162] :636:GETIMPORT      v3 = script
[164] :636:GETTABLEKS     v2 = v3.Name
[166] :636:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1108
[168] :638:GETIMPORT      v2 = game
[169] :638:LOADK          v4 = "ContextActionService"
[172] :638:CALL           v2 = v2:GetService(v4)
[174] :638:GETIMPORT      v7 = script
[176] :638:GETTABLEKS     v5 = v7.Name
[177] :638:LOADK          v6 = "Power1"
[178] :638:CONCAT         v4 = v5 .. v6
[180] :638:GETGLOBAL      v5 = Power1
[181] :638:LOADB          v6 = false
[183] :638:GETIMPORT      v8 = Enum.KeyCode
[184] :638:GETUPVAL       v12 = u_v1
[186] :638:GETTABLEKS     v11 = v12.Data
[188] :638:GETTABLEKS     v10 = v11.Basic_DF1A
[190] :638:GETTABLEKS     v9 = v10.Value
[191] :638:GETTABLE       v7 = v8[v9]
[194] :638:CALL           v2:BindAction(v4, v5, v6, v7)
[196] :639:GETIMPORT      v2 = game
[197] :639:LOADK          v4 = "ContextActionService"
[200] :639:CALL           v2 = v2:GetService(v4)
[202] :639:GETIMPORT      v7 = script
[204] :639:GETTABLEKS     v5 = v7.Name
[205] :639:LOADK          v6 = "Power2"
[206] :639:CONCAT         v4 = v5 .. v6
[208] :639:GETGLOBAL      v5 = Power2
[209] :639:LOADB          v6 = false
[211] :639:GETIMPORT      v8 = Enum.KeyCode
[212] :639:GETUPVAL       v12 = u_v1
[214] :639:GETTABLEKS     v11 = v12.Data
[216] :639:GETTABLEKS     v10 = v11.Basic_DF1B
[218] :639:GETTABLEKS     v9 = v10.Value
[219] :639:GETTABLE       v7 = v8[v9]
[222] :639:CALL           v2:BindAction(v4, v5, v6, v7)
[224] :640:GETIMPORT      v2 = game
[225] :640:LOADK          v4 = "ContextActionService"
[228] :640:CALL           v2 = v2:GetService(v4)
[230] :640:GETIMPORT      v7 = script
[232] :640:GETTABLEKS     v5 = v7.Name
[233] :640:LOADK          v6 = "Power3"
[234] :640:CONCAT         v4 = v5 .. v6
[236] :640:GETGLOBAL      v5 = Power3
[237] :640:LOADB          v6 = false
[239] :640:GETIMPORT      v8 = Enum.KeyCode
[240] :640:GETUPVAL       v12 = u_v1
[242] :640:GETTABLEKS     v11 = v12.Data
[244] :640:GETTABLEKS     v10 = v11.Basic_DF1C
[246] :640:GETTABLEKS     v9 = v10.Value
[247] :640:GETTABLE       v7 = v8[v9]
[250] :640:CALL           v2:BindAction(v4, v5, v6, v7)
[252] :641:GETIMPORT      v2 = game
[253] :641:LOADK          v4 = "ContextActionService"
[256] :641:CALL           v2 = v2:GetService(v4)
[258] :641:GETIMPORT      v7 = script
[260] :641:GETTABLEKS     v5 = v7.Name
[261] :641:LOADK          v6 = "Power4"
[262] :641:CONCAT         v4 = v5 .. v6
[264] :641:GETGLOBAL      v5 = Power4
[265] :641:LOADB          v6 = false
[267] :641:GETIMPORT      v8 = Enum.KeyCode
[268] :641:GETUPVAL       v12 = u_v1
[270] :641:GETTABLEKS     v11 = v12.Data
[272] :641:GETTABLEKS     v10 = v11.Basic_DF1D
[274] :641:GETTABLEKS     v9 = v10.Value
[275] :641:GETTABLE       v7 = v8[v9]
[278] :641:CALL           v2:BindAction(v4, v5, v6, v7)
[280] :642:GETIMPORT      v2 = game
[281] :642:LOADK          v4 = "ContextActionService"
[284] :642:CALL           v2 = v2:GetService(v4)
[286] :642:GETIMPORT      v7 = script
[288] :642:GETTABLEKS     v5 = v7.Name
[289] :642:LOADK          v6 = "Power5"
[290] :642:CONCAT         v4 = v5 .. v6
[292] :642:GETGLOBAL      v5 = Power5
[293] :642:LOADB          v6 = false
[295] :642:GETIMPORT      v8 = Enum.KeyCode
[296] :642:GETUPVAL       v12 = u_v1
[298] :642:GETTABLEKS     v11 = v12.Data
[300] :642:GETTABLEKS     v10 = v11.Basic_DF1E
[302] :642:GETTABLEKS     v9 = v10.Value
[303] :642:GETTABLE       v7 = v8[v9]
[306] :642:CALL           v2:BindAction(v4, v5, v6, v7)
[308] :643:GETIMPORT      v2 = game
[309] :643:LOADK          v4 = "ContextActionService"
[312] :643:CALL           v2 = v2:GetService(v4)
[314] :643:GETIMPORT      v7 = script
[316] :643:GETTABLEKS     v5 = v7.Name
[317] :643:LOADK          v6 = "Power6"
[318] :643:CONCAT         v4 = v5 .. v6
[320] :643:GETGLOBAL      v5 = Power6
[321] :643:LOADB          v6 = false
[323] :643:GETIMPORT      v8 = Enum.KeyCode
[324] :643:GETUPVAL       v12 = u_v1
[326] :643:GETTABLEKS     v11 = v12.Data
[328] :643:GETTABLEKS     v10 = v11.Basic_DF1F
[330] :643:GETTABLEKS     v9 = v10.Value
[331] :643:GETTABLE       v7 = v8[v9]
[334] :643:CALL           v2:BindAction(v4, v5, v6, v7)
[336] :644:GETIMPORT      v3 = game
[337] :644:LOADK          v5 = "UserInputService"
[340] :644:CALL           v3 = v3:GetService(v5)
[342] :644:GETTABLEKS     v2 = v3.TouchEnabled
[344] :644:JUMPXEQKB      if v2 == true then -- goto #1108
[345] :645:GETUPVAL       v5 = u_v0
[347] :645:GETTABLEKS     v4 = v5.PlayerGui
[349] :645:GETTABLEKS     v3 = v4.MobileContext
[351] :645:GETTABLEKS     v2 = v3.Button
[354] :645:CALL           v2 = v2:Clone()
[356] :645:SETGLOBAL      Button1 = v2
[357] :646:GETUPVAL       v5 = u_v0
[359] :646:GETTABLEKS     v4 = v5.PlayerGui
[361] :646:GETTABLEKS     v3 = v4.MobileContext
[363] :646:GETTABLEKS     v2 = v3.Button
[366] :646:CALL           v2 = v2:Clone()
[368] :646:SETGLOBAL      Button2 = v2
[369] :647:GETUPVAL       v5 = u_v0
[371] :647:GETTABLEKS     v4 = v5.PlayerGui
[373] :647:GETTABLEKS     v3 = v4.MobileContext
[375] :647:GETTABLEKS     v2 = v3.Button
[378] :647:CALL           v2 = v2:Clone()
[380] :647:SETGLOBAL      Button3 = v2
[381] :648:GETUPVAL       v5 = u_v0
[383] :648:GETTABLEKS     v4 = v5.PlayerGui
[385] :648:GETTABLEKS     v3 = v4.MobileContext
[387] :648:GETTABLEKS     v2 = v3.Button
[390] :648:CALL           v2 = v2:Clone()
[392] :648:SETGLOBAL      Button4 = v2
[393] :649:GETUPVAL       v5 = u_v0
[395] :649:GETTABLEKS     v4 = v5.PlayerGui
[397] :649:GETTABLEKS     v3 = v4.MobileContext
[399] :649:GETTABLEKS     v2 = v3.Button
[402] :649:CALL           v2 = v2:Clone()
[404] :649:SETGLOBAL      Button5 = v2
[405] :650:GETUPVAL       v5 = u_v0
[407] :650:GETTABLEKS     v4 = v5.PlayerGui
[409] :650:GETTABLEKS     v3 = v4.MobileContext
[411] :650:GETTABLEKS     v2 = v3.Button
[414] :650:CALL           v2 = v2:Clone()
[416] :650:SETGLOBAL      Button6 = v2
[418] :651:GETGLOBAL      v2 = Button1
[419] :651:LOADK          v3 = "Power1"
[421] :651:SETTABLEKS     v2.Name = v3
[423] :652:GETGLOBAL      v2 = Button2
[424] :652:LOADK          v3 = "Power2"
[426] :652:SETTABLEKS     v2.Name = v3
[428] :653:GETGLOBAL      v2 = Button3
[429] :653:LOADK          v3 = "Power3"
[431] :653:SETTABLEKS     v2.Name = v3
[433] :654:GETGLOBAL      v2 = Button4
[434] :654:LOADK          v3 = "Power4"
[436] :654:SETTABLEKS     v2.Name = v3
[438] :655:GETGLOBAL      v2 = Button5
[439] :655:LOADK          v3 = "Power5"
[441] :655:SETTABLEKS     v2.Name = v3
[443] :656:GETGLOBAL      v2 = Button6
[444] :656:LOADK          v3 = "Power6"
[446] :656:SETTABLEKS     v2.Name = v3
[448] :657:GETGLOBAL      v2 = Button1
[449] :657:GETUPVAL       v6 = u_v0
[451] :657:GETTABLEKS     v5 = v6.PlayerGui
[453] :657:GETTABLEKS     v4 = v5.MobileContext
[455] :657:GETTABLEKS     v3 = v4.ContextActions1
[457] :657:SETTABLEKS     v2.Parent = v3
[459] :658:GETGLOBAL      v2 = Button2
[460] :658:GETUPVAL       v6 = u_v0
[462] :658:GETTABLEKS     v5 = v6.PlayerGui
[464] :658:GETTABLEKS     v4 = v5.MobileContext
[466] :658:GETTABLEKS     v3 = v4.ContextActions1
[468] :658:SETTABLEKS     v2.Parent = v3
[470] :659:GETGLOBAL      v2 = Button3
[471] :659:GETUPVAL       v6 = u_v0
[473] :659:GETTABLEKS     v5 = v6.PlayerGui
[475] :659:GETTABLEKS     v4 = v5.MobileContext
[477] :659:GETTABLEKS     v3 = v4.ContextActions1
[479] :659:SETTABLEKS     v2.Parent = v3
[481] :660:GETGLOBAL      v2 = Button4
[482] :660:GETUPVAL       v6 = u_v0
[484] :660:GETTABLEKS     v5 = v6.PlayerGui
[486] :660:GETTABLEKS     v4 = v5.MobileContext
[488] :660:GETTABLEKS     v3 = v4.ContextActions1
[490] :660:SETTABLEKS     v2.Parent = v3
[492] :661:GETGLOBAL      v2 = Button5
[493] :661:GETUPVAL       v6 = u_v0
[495] :661:GETTABLEKS     v5 = v6.PlayerGui
[497] :661:GETTABLEKS     v4 = v5.MobileContext
[499] :661:GETTABLEKS     v3 = v4.ContextActions1
[501] :661:SETTABLEKS     v2.Parent = v3
[503] :662:GETGLOBAL      v2 = Button6
[504] :662:GETUPVAL       v6 = u_v0
[506] :662:GETTABLEKS     v5 = v6.PlayerGui
[508] :662:GETTABLEKS     v4 = v5.MobileContext
[510] :662:GETTABLEKS     v3 = v4.ContextActions1
[512] :662:SETTABLEKS     v2.Parent = v3
[514] :663:GETGLOBAL      v3 = Button1
[516] :663:GETTABLEKS     v2 = v3.MouseButton1Click
[517] :663:DUPCLOSURE     v4 = function()
-- proto pool id: 19
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :663:GETGLOBAL      v0 = SP
[004] :663:GETGLOBAL      v1 = Button1
[006] :663:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :663:LOADNIL        v0 = nil
[009] :663:SETGLOBAL      SP = v0
[010] :663:JUMP           -- jump to #14
end
[012] :663:GETGLOBAL      v0 = Button1
[014] :663:SETGLOBAL      SP = v0
[016] :663:GETGLOBAL      v0 = NewSP
[017] :663:CALL           v0()
[018] :663:RETURN         return
end
[520] :663:CALL           v2:Connect(v4)
[522] :664:GETGLOBAL      v3 = Button2
[524] :664:GETTABLEKS     v2 = v3.MouseButton1Click
[525] :664:DUPCLOSURE     v4 = function()
-- proto pool id: 20
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :664:GETGLOBAL      v0 = SP
[004] :664:GETGLOBAL      v1 = Button2
[006] :664:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :664:LOADNIL        v0 = nil
[009] :664:SETGLOBAL      SP = v0
[010] :664:JUMP           -- jump to #14
end
[012] :664:GETGLOBAL      v0 = Button2
[014] :664:SETGLOBAL      SP = v0
[016] :664:GETGLOBAL      v0 = NewSP
[017] :664:CALL           v0()
[018] :664:RETURN         return
end
[528] :664:CALL           v2:Connect(v4)
[530] :665:GETGLOBAL      v3 = Button3
[532] :665:GETTABLEKS     v2 = v3.MouseButton1Click
[533] :665:DUPCLOSURE     v4 = function()
-- proto pool id: 21
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :665:GETGLOBAL      v0 = SP
[004] :665:GETGLOBAL      v1 = Button3
[006] :665:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :665:LOADNIL        v0 = nil
[009] :665:SETGLOBAL      SP = v0
[010] :665:JUMP           -- jump to #14
end
[012] :665:GETGLOBAL      v0 = Button3
[014] :665:SETGLOBAL      SP = v0
[016] :665:GETGLOBAL      v0 = NewSP
[017] :665:CALL           v0()
[018] :665:RETURN         return
end
[536] :665:CALL           v2:Connect(v4)
[538] :666:GETGLOBAL      v3 = Button4
[540] :666:GETTABLEKS     v2 = v3.MouseButton1Click
[541] :666:DUPCLOSURE     v4 = function()
-- proto pool id: 22
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :666:GETGLOBAL      v0 = SP
[004] :666:GETGLOBAL      v1 = Button4
[006] :666:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :666:LOADNIL        v0 = nil
[009] :666:SETGLOBAL      SP = v0
[010] :666:JUMP           -- jump to #14
end
[012] :666:GETGLOBAL      v0 = Button4
[014] :666:SETGLOBAL      SP = v0
[016] :666:GETGLOBAL      v0 = NewSP
[017] :666:CALL           v0()
[018] :666:RETURN         return
end
[544] :666:CALL           v2:Connect(v4)
[546] :667:GETGLOBAL      v3 = Button5
[548] :667:GETTABLEKS     v2 = v3.MouseButton1Click
[549] :667:DUPCLOSURE     v4 = function()
-- proto pool id: 23
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :667:GETGLOBAL      v0 = SP
[004] :667:GETGLOBAL      v1 = Button5
[006] :667:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :667:LOADNIL        v0 = nil
[009] :667:SETGLOBAL      SP = v0
[010] :667:JUMP           -- jump to #14
end
[012] :667:GETGLOBAL      v0 = Button5
[014] :667:SETGLOBAL      SP = v0
[016] :667:GETGLOBAL      v0 = NewSP
[017] :667:CALL           v0()
[018] :667:RETURN         return
end
[552] :667:CALL           v2:Connect(v4)
[554] :668:GETGLOBAL      v3 = Button6
[556] :668:GETTABLEKS     v2 = v3.MouseButton1Click
[557] :668:DUPCLOSURE     v4 = function()
-- proto pool id: 24
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :668:GETGLOBAL      v0 = SP
[004] :668:GETGLOBAL      v1 = Button6
[006] :668:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :668:LOADNIL        v0 = nil
[009] :668:SETGLOBAL      SP = v0
[010] :668:JUMP           -- jump to #14
end
[012] :668:GETGLOBAL      v0 = Button6
[014] :668:SETGLOBAL      SP = v0
[016] :668:GETGLOBAL      v0 = NewSP
[017] :668:CALL           v0()
[018] :668:RETURN         return
end
[560] :668:CALL           v2:Connect(v4)
[561] :668:RETURN         return
end
[563] :671:JUMPXEQKN      if p23 == 2 then -- goto #1108
[565] :673:GETIMPORT      v2 = game
[566] :673:LOADK          v4 = "ContextActionService"
[569] :673:CALL           v2 = v2:GetService(v4)
[571] :673:GETIMPORT      v7 = script
[573] :673:GETTABLEKS     v5 = v7.Name
[574] :673:LOADK          v6 = "Power7"
[575] :673:CONCAT         v4 = v5 .. v6
[578] :673:CALL           v2:UnbindAction(v4)
[580] :674:GETIMPORT      v2 = game
[581] :674:LOADK          v4 = "ContextActionService"
[584] :674:CALL           v2 = v2:GetService(v4)
[586] :674:GETIMPORT      v7 = script
[588] :674:GETTABLEKS     v5 = v7.Name
[589] :674:LOADK          v6 = "Power8"
[590] :674:CONCAT         v4 = v5 .. v6
[593] :674:CALL           v2:UnbindAction(v4)
[595] :675:GETIMPORT      v2 = game
[596] :675:LOADK          v4 = "ContextActionService"
[599] :675:CALL           v2 = v2:GetService(v4)
[601] :675:GETIMPORT      v7 = script
[603] :675:GETTABLEKS     v5 = v7.Name
[604] :675:LOADK          v6 = "Power9"
[605] :675:CONCAT         v4 = v5 .. v6
[608] :675:CALL           v2:UnbindAction(v4)
[610] :676:GETIMPORT      v2 = game
[611] :676:LOADK          v4 = "ContextActionService"
[614] :676:CALL           v2 = v2:GetService(v4)
[616] :676:GETIMPORT      v7 = script
[618] :676:GETTABLEKS     v5 = v7.Name
[619] :676:LOADK          v6 = "Power10"
[620] :676:CONCAT         v4 = v5 .. v6
[623] :676:CALL           v2:UnbindAction(v4)
[625] :677:GETIMPORT      v2 = game
[626] :677:LOADK          v4 = "ContextActionService"
[629] :677:CALL           v2 = v2:GetService(v4)
[631] :677:GETIMPORT      v7 = script
[633] :677:GETTABLEKS     v5 = v7.Name
[634] :677:LOADK          v6 = "Power11"
[635] :677:CONCAT         v4 = v5 .. v6
[638] :677:CALL           v2:UnbindAction(v4)
[640] :678:GETIMPORT      v2 = game
[641] :678:LOADK          v4 = "ContextActionService"
[644] :678:CALL           v2 = v2:GetService(v4)
[646] :678:GETIMPORT      v7 = script
[648] :678:GETTABLEKS     v5 = v7.Name
[649] :678:LOADK          v6 = "Power12"
[650] :678:CONCAT         v4 = v5 .. v6
[653] :678:CALL           v2:UnbindAction(v4)
[655] :679:GETGLOBAL      v2 = Button7
[657] :679:JUMPXEQKNIL    if v2 ~= nil then -- goto #663
[659] :679:GETGLOBAL      v2 = Button7
[662] :679:CALL           v2:Destroy()
end
[664] :680:GETGLOBAL      v2 = Button8
[666] :680:JUMPXEQKNIL    if v2 ~= nil then -- goto #672
[668] :680:GETGLOBAL      v2 = Button8
[671] :680:CALL           v2:Destroy()
end
[673] :681:GETGLOBAL      v2 = Button9
[675] :681:JUMPXEQKNIL    if v2 ~= nil then -- goto #681
[677] :681:GETGLOBAL      v2 = Button9
[680] :681:CALL           v2:Destroy()
end
[682] :682:GETGLOBAL      v2 = Button10
[684] :682:JUMPXEQKNIL    if v2 ~= nil then -- goto #690
[686] :682:GETGLOBAL      v2 = Button10
[689] :682:CALL           v2:Destroy()
end
[691] :683:GETGLOBAL      v2 = Button11
[693] :683:JUMPXEQKNIL    if v2 ~= nil then -- goto #699
[695] :683:GETGLOBAL      v2 = Button11
[698] :683:CALL           v2:Destroy()
end
[700] :684:GETGLOBAL      v2 = Button12
[702] :684:JUMPXEQKNIL    if v2 ~= nil then -- goto #708
[704] :684:GETGLOBAL      v2 = Button12
[707] :684:CALL           v2:Destroy()
end
[709] :685:GETIMPORT      v3 = script
[711] :685:GETTABLEKS     v2 = v3.Name
[713] :685:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1108
[715] :686:GETIMPORT      v2 = game
[716] :686:LOADK          v4 = "ContextActionService"
[719] :686:CALL           v2 = v2:GetService(v4)
[721] :686:GETIMPORT      v7 = script
[723] :686:GETTABLEKS     v5 = v7.Name
[724] :686:LOADK          v6 = "Power7"
[725] :686:CONCAT         v4 = v5 .. v6
[727] :686:GETGLOBAL      v5 = Power1
[728] :686:LOADB          v6 = false
[730] :686:GETIMPORT      v8 = Enum.KeyCode
[731] :686:GETUPVAL       v12 = u_v1
[733] :686:GETTABLEKS     v11 = v12.Data
[735] :686:GETTABLEKS     v10 = v11.Basic_DF2A
[737] :686:GETTABLEKS     v9 = v10.Value
[738] :686:GETTABLE       v7 = v8[v9]
[741] :686:CALL           v2:BindAction(v4, v5, v6, v7)
[743] :687:GETIMPORT      v2 = game
[744] :687:LOADK          v4 = "ContextActionService"
[747] :687:CALL           v2 = v2:GetService(v4)
[749] :687:GETIMPORT      v7 = script
[751] :687:GETTABLEKS     v5 = v7.Name
[752] :687:LOADK          v6 = "Power8"
[753] :687:CONCAT         v4 = v5 .. v6
[755] :687:GETGLOBAL      v5 = Power2
[756] :687:LOADB          v6 = false
[758] :687:GETIMPORT      v8 = Enum.KeyCode
[759] :687:GETUPVAL       v12 = u_v1
[761] :687:GETTABLEKS     v11 = v12.Data
[763] :687:GETTABLEKS     v10 = v11.Basic_DF2B
[765] :687:GETTABLEKS     v9 = v10.Value
[766] :687:GETTABLE       v7 = v8[v9]
[769] :687:CALL           v2:BindAction(v4, v5, v6, v7)
[771] :688:GETIMPORT      v2 = game
[772] :688:LOADK          v4 = "ContextActionService"
[775] :688:CALL           v2 = v2:GetService(v4)
[777] :688:GETIMPORT      v7 = script
[779] :688:GETTABLEKS     v5 = v7.Name
[780] :688:LOADK          v6 = "Power9"
[781] :688:CONCAT         v4 = v5 .. v6
[783] :688:GETGLOBAL      v5 = Power3
[784] :688:LOADB          v6 = false
[786] :688:GETIMPORT      v8 = Enum.KeyCode
[787] :688:GETUPVAL       v12 = u_v1
[789] :688:GETTABLEKS     v11 = v12.Data
[791] :688:GETTABLEKS     v10 = v11.Basic_DF2C
[793] :688:GETTABLEKS     v9 = v10.Value
[794] :688:GETTABLE       v7 = v8[v9]
[797] :688:CALL           v2:BindAction(v4, v5, v6, v7)
[799] :689:GETIMPORT      v2 = game
[800] :689:LOADK          v4 = "ContextActionService"
[803] :689:CALL           v2 = v2:GetService(v4)
[805] :689:GETIMPORT      v7 = script
[807] :689:GETTABLEKS     v5 = v7.Name
[808] :689:LOADK          v6 = "Power10"
[809] :689:CONCAT         v4 = v5 .. v6
[811] :689:GETGLOBAL      v5 = Power4
[812] :689:LOADB          v6 = false
[814] :689:GETIMPORT      v8 = Enum.KeyCode
[815] :689:GETUPVAL       v12 = u_v1
[817] :689:GETTABLEKS     v11 = v12.Data
[819] :689:GETTABLEKS     v10 = v11.Basic_DF2D
[821] :689:GETTABLEKS     v9 = v10.Value
[822] :689:GETTABLE       v7 = v8[v9]
[825] :689:CALL           v2:BindAction(v4, v5, v6, v7)
[827] :690:GETIMPORT      v2 = game
[828] :690:LOADK          v4 = "ContextActionService"
[831] :690:CALL           v2 = v2:GetService(v4)
[833] :690:GETIMPORT      v7 = script
[835] :690:GETTABLEKS     v5 = v7.Name
[836] :690:LOADK          v6 = "Power11"
[837] :690:CONCAT         v4 = v5 .. v6
[839] :690:GETGLOBAL      v5 = Power5
[840] :690:LOADB          v6 = false
[842] :690:GETIMPORT      v8 = Enum.KeyCode
[843] :690:GETUPVAL       v12 = u_v1
[845] :690:GETTABLEKS     v11 = v12.Data
[847] :690:GETTABLEKS     v10 = v11.Basic_DF2E
[849] :690:GETTABLEKS     v9 = v10.Value
[850] :690:GETTABLE       v7 = v8[v9]
[853] :690:CALL           v2:BindAction(v4, v5, v6, v7)
[855] :691:GETIMPORT      v2 = game
[856] :691:LOADK          v4 = "ContextActionService"
[859] :691:CALL           v2 = v2:GetService(v4)
[861] :691:GETIMPORT      v7 = script
[863] :691:GETTABLEKS     v5 = v7.Name
[864] :691:LOADK          v6 = "Power12"
[865] :691:CONCAT         v4 = v5 .. v6
[867] :691:GETGLOBAL      v5 = Power6
[868] :691:LOADB          v6 = false
[870] :691:GETIMPORT      v8 = Enum.KeyCode
[871] :691:GETUPVAL       v12 = u_v1
[873] :691:GETTABLEKS     v11 = v12.Data
[875] :691:GETTABLEKS     v10 = v11.Basic_DF2F
[877] :691:GETTABLEKS     v9 = v10.Value
[878] :691:GETTABLE       v7 = v8[v9]
[881] :691:CALL           v2:BindAction(v4, v5, v6, v7)
[883] :692:GETIMPORT      v3 = game
[884] :692:LOADK          v5 = "UserInputService"
[887] :692:CALL           v3 = v3:GetService(v5)
[889] :692:GETTABLEKS     v2 = v3.TouchEnabled
[891] :692:JUMPXEQKB      if v2 == true then -- goto #1108
[892] :693:GETUPVAL       v5 = u_v0
[894] :693:GETTABLEKS     v4 = v5.PlayerGui
[896] :693:GETTABLEKS     v3 = v4.MobileContext
[898] :693:GETTABLEKS     v2 = v3.Button
[901] :693:CALL           v2 = v2:Clone()
[903] :693:SETGLOBAL      Button7 = v2
[904] :694:GETUPVAL       v5 = u_v0
[906] :694:GETTABLEKS     v4 = v5.PlayerGui
[908] :694:GETTABLEKS     v3 = v4.MobileContext
[910] :694:GETTABLEKS     v2 = v3.Button
[913] :694:CALL           v2 = v2:Clone()
[915] :694:SETGLOBAL      Button8 = v2
[916] :695:GETUPVAL       v5 = u_v0
[918] :695:GETTABLEKS     v4 = v5.PlayerGui
[920] :695:GETTABLEKS     v3 = v4.MobileContext
[922] :695:GETTABLEKS     v2 = v3.Button
[925] :695:CALL           v2 = v2:Clone()
[927] :695:SETGLOBAL      Button9 = v2
[928] :696:GETUPVAL       v5 = u_v0
[930] :696:GETTABLEKS     v4 = v5.PlayerGui
[932] :696:GETTABLEKS     v3 = v4.MobileContext
[934] :696:GETTABLEKS     v2 = v3.Button
[937] :696:CALL           v2 = v2:Clone()
[939] :696:SETGLOBAL      Button10 = v2
[940] :697:GETUPVAL       v5 = u_v0
[942] :697:GETTABLEKS     v4 = v5.PlayerGui
[944] :697:GETTABLEKS     v3 = v4.MobileContext
[946] :697:GETTABLEKS     v2 = v3.Button
[949] :697:CALL           v2 = v2:Clone()
[951] :697:SETGLOBAL      Button11 = v2
[952] :698:GETUPVAL       v5 = u_v0
[954] :698:GETTABLEKS     v4 = v5.PlayerGui
[956] :698:GETTABLEKS     v3 = v4.MobileContext
[958] :698:GETTABLEKS     v2 = v3.Button
[961] :698:CALL           v2 = v2:Clone()
[963] :698:SETGLOBAL      Button12 = v2
[965] :699:GETGLOBAL      v2 = Button7
[966] :699:LOADK          v3 = "Power7"
[968] :699:SETTABLEKS     v2.Name = v3
[970] :700:GETGLOBAL      v2 = Button8
[971] :700:LOADK          v3 = "Power8"
[973] :700:SETTABLEKS     v2.Name = v3
[975] :701:GETGLOBAL      v2 = Button9
[976] :701:LOADK          v3 = "Power9"
[978] :701:SETTABLEKS     v2.Name = v3
[980] :702:GETGLOBAL      v2 = Button10
[981] :702:LOADK          v3 = "Power10"
[983] :702:SETTABLEKS     v2.Name = v3
[985] :703:GETGLOBAL      v2 = Button11
[986] :703:LOADK          v3 = "Power11"
[988] :703:SETTABLEKS     v2.Name = v3
[990] :704:GETGLOBAL      v2 = Button12
[991] :704:LOADK          v3 = "Power12"
[993] :704:SETTABLEKS     v2.Name = v3
[995] :705:GETGLOBAL      v2 = Button7
[996] :705:GETUPVAL       v6 = u_v0
[998] :705:GETTABLEKS     v5 = v6.PlayerGui
[1000] :705:GETTABLEKS     v4 = v5.MobileContext
[1002] :705:GETTABLEKS     v3 = v4.ContextActions2
[1004] :705:SETTABLEKS     v2.Parent = v3
[1006] :706:GETGLOBAL      v2 = Button8
[1007] :706:GETUPVAL       v6 = u_v0
[1009] :706:GETTABLEKS     v5 = v6.PlayerGui
[1011] :706:GETTABLEKS     v4 = v5.MobileContext
[1013] :706:GETTABLEKS     v3 = v4.ContextActions2
[1015] :706:SETTABLEKS     v2.Parent = v3
[1017] :707:GETGLOBAL      v2 = Button9
[1018] :707:GETUPVAL       v6 = u_v0
[1020] :707:GETTABLEKS     v5 = v6.PlayerGui
[1022] :707:GETTABLEKS     v4 = v5.MobileContext
[1024] :707:GETTABLEKS     v3 = v4.ContextActions2
[1026] :707:SETTABLEKS     v2.Parent = v3
[1028] :708:GETGLOBAL      v2 = Button10
[1029] :708:GETUPVAL       v6 = u_v0
[1031] :708:GETTABLEKS     v5 = v6.PlayerGui
[1033] :708:GETTABLEKS     v4 = v5.MobileContext
[1035] :708:GETTABLEKS     v3 = v4.ContextActions2
[1037] :708:SETTABLEKS     v2.Parent = v3
[1039] :709:GETGLOBAL      v2 = Button11
[1040] :709:GETUPVAL       v6 = u_v0
[1042] :709:GETTABLEKS     v5 = v6.PlayerGui
[1044] :709:GETTABLEKS     v4 = v5.MobileContext
[1046] :709:GETTABLEKS     v3 = v4.ContextActions2
[1048] :709:SETTABLEKS     v2.Parent = v3
[1050] :710:GETGLOBAL      v2 = Button12
[1051] :710:GETUPVAL       v6 = u_v0
[1053] :710:GETTABLEKS     v5 = v6.PlayerGui
[1055] :710:GETTABLEKS     v4 = v5.MobileContext
[1057] :710:GETTABLEKS     v3 = v4.ContextActions2
[1059] :710:SETTABLEKS     v2.Parent = v3
[1061] :711:GETGLOBAL      v3 = Button7
[1063] :711:GETTABLEKS     v2 = v3.MouseButton1Click
[1064] :711:DUPCLOSURE     v4 = function()
-- proto pool id: 25
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :711:GETGLOBAL      v0 = SP
[004] :711:GETGLOBAL      v1 = Button7
[006] :711:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :711:LOADNIL        v0 = nil
[009] :711:SETGLOBAL      SP = v0
[010] :711:JUMP           -- jump to #14
end
[012] :711:GETGLOBAL      v0 = Button7
[014] :711:SETGLOBAL      SP = v0
[016] :711:GETGLOBAL      v0 = NewSP
[017] :711:CALL           v0()
[018] :711:RETURN         return
end
[1067] :711:CALL           v2:Connect(v4)
[1069] :712:GETGLOBAL      v3 = Button8
[1071] :712:GETTABLEKS     v2 = v3.MouseButton1Click
[1072] :712:DUPCLOSURE     v4 = function()
-- proto pool id: 26
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :712:GETGLOBAL      v0 = SP
[004] :712:GETGLOBAL      v1 = Button8
[006] :712:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :712:LOADNIL        v0 = nil
[009] :712:SETGLOBAL      SP = v0
[010] :712:JUMP           -- jump to #14
end
[012] :712:GETGLOBAL      v0 = Button8
[014] :712:SETGLOBAL      SP = v0
[016] :712:GETGLOBAL      v0 = NewSP
[017] :712:CALL           v0()
[018] :712:RETURN         return
end
[1075] :712:CALL           v2:Connect(v4)
[1077] :713:GETGLOBAL      v3 = Button9
[1079] :713:GETTABLEKS     v2 = v3.MouseButton1Click
[1080] :713:DUPCLOSURE     v4 = function()
-- proto pool id: 27
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :713:GETGLOBAL      v0 = SP
[004] :713:GETGLOBAL      v1 = Button9
[006] :713:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :713:LOADNIL        v0 = nil
[009] :713:SETGLOBAL      SP = v0
[010] :713:JUMP           -- jump to #14
end
[012] :713:GETGLOBAL      v0 = Button9
[014] :713:SETGLOBAL      SP = v0
[016] :713:GETGLOBAL      v0 = NewSP
[017] :713:CALL           v0()
[018] :713:RETURN         return
end
[1083] :713:CALL           v2:Connect(v4)
[1085] :714:GETGLOBAL      v3 = Button10
[1087] :714:GETTABLEKS     v2 = v3.MouseButton1Click
[1088] :714:DUPCLOSURE     v4 = function()
-- proto pool id: 28
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :714:GETGLOBAL      v0 = SP
[004] :714:GETGLOBAL      v1 = Button10
[006] :714:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :714:LOADNIL        v0 = nil
[009] :714:SETGLOBAL      SP = v0
[010] :714:JUMP           -- jump to #14
end
[012] :714:GETGLOBAL      v0 = Button10
[014] :714:SETGLOBAL      SP = v0
[016] :714:GETGLOBAL      v0 = NewSP
[017] :714:CALL           v0()
[018] :714:RETURN         return
end
[1091] :714:CALL           v2:Connect(v4)
[1093] :715:GETGLOBAL      v3 = Button11
[1095] :715:GETTABLEKS     v2 = v3.MouseButton1Click
[1096] :715:DUPCLOSURE     v4 = function()
-- proto pool id: 29
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :715:GETGLOBAL      v0 = SP
[004] :715:GETGLOBAL      v1 = Button11
[006] :715:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :715:LOADNIL        v0 = nil
[009] :715:SETGLOBAL      SP = v0
[010] :715:JUMP           -- jump to #14
end
[012] :715:GETGLOBAL      v0 = Button11
[014] :715:SETGLOBAL      SP = v0
[016] :715:GETGLOBAL      v0 = NewSP
[017] :715:CALL           v0()
[018] :715:RETURN         return
end
[1099] :715:CALL           v2:Connect(v4)
[1101] :716:GETGLOBAL      v3 = Button12
[1103] :716:GETTABLEKS     v2 = v3.MouseButton1Click
[1104] :716:DUPCLOSURE     v4 = function()
-- proto pool id: 30
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :716:GETGLOBAL      v0 = SP
[004] :716:GETGLOBAL      v1 = Button12
[006] :716:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :716:LOADNIL        v0 = nil
[009] :716:SETGLOBAL      SP = v0
[010] :716:JUMP           -- jump to #14
end
[012] :716:GETGLOBAL      v0 = Button12
[014] :716:SETGLOBAL      SP = v0
[016] :716:GETGLOBAL      v0 = NewSP
[017] :716:CALL           v0()
[018] :716:RETURN         return
end
[1107] :716:CALL           v2:Connect(v4)
end
end
end
end
end
[1108] :720:RETURN         return
end
v5 = Update
[536] :1233:GETIMPORT      v9 = script
[538] :1233:GETTABLEKS     v8 = v9.Parent
[540] :1233:GETTABLEKS     v7 = v8.DevilFruitUpdate
[542] :1233:GETTABLEKS     v6 = v7.OnClientEvent
[543] :1233:DUPCLOSURE     v8 = function(p25, p26)
-- proto pool id: 32
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 5
-- size constants: 0
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[001] :722:GETUPVAL       v0 = u_v5
[002] :722:MOVE           v1 = p25
[003] :722:MOVE           v2 = p26
[004] :722:CALL           v0(v1, v2)
[005] :723:RETURN         return
end
[547] :1233:CALL           v6:connect(v8)
[549] :1236:GETTABLEKS     v7 = v1.Data
[551] :1236:GETTABLEKS     v6 = v7.Basic_DF1A
[552] :1236:LOADK          v8 = "Value"
[555] :1236:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[556] :1236:DUPCLOSURE     v8 = function()
-- proto pool id: 33
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :724:GETUPVAL       v0 = u_v5
[002] :724:LOADN          v1 = 1
[003] :724:GETUPVAL       v5 = u_v1
[005] :724:GETTABLEKS     v4 = v5.Data
[007] :724:GETTABLEKS     v3 = v4.DevilFruit
[009] :724:GETTABLEKS     v2 = v3.Value
[010] :724:CALL           v0(v1, v2)
[011] :724:RETURN         return
end
[561] :1236:CALL           v6:Connect(v8)
[563] :1237:GETTABLEKS     v7 = v1.Data
[565] :1237:GETTABLEKS     v6 = v7.Basic_DF1B
[566] :1237:LOADK          v8 = "Value"
[569] :1237:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[570] :1237:DUPCLOSURE     v8 = function()
-- proto pool id: 34
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :725:GETUPVAL       v0 = u_v5
[002] :725:LOADN          v1 = 1
[003] :725:GETUPVAL       v5 = u_v1
[005] :725:GETTABLEKS     v4 = v5.Data
[007] :725:GETTABLEKS     v3 = v4.DevilFruit
[009] :725:GETTABLEKS     v2 = v3.Value
[010] :725:CALL           v0(v1, v2)
[011] :725:RETURN         return
end
[575] :1237:CALL           v6:Connect(v8)
[577] :1238:GETTABLEKS     v7 = v1.Data
[579] :1238:GETTABLEKS     v6 = v7.Basic_DF1C
[580] :1238:LOADK          v8 = "Value"
[583] :1238:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[584] :1238:DUPCLOSURE     v8 = function()
-- proto pool id: 35
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :726:GETUPVAL       v0 = u_v5
[002] :726:LOADN          v1 = 1
[003] :726:GETUPVAL       v5 = u_v1
[005] :726:GETTABLEKS     v4 = v5.Data
[007] :726:GETTABLEKS     v3 = v4.DevilFruit
[009] :726:GETTABLEKS     v2 = v3.Value
[010] :726:CALL           v0(v1, v2)
[011] :726:RETURN         return
end
[589] :1238:CALL           v6:Connect(v8)
[591] :1239:GETTABLEKS     v7 = v1.Data
[593] :1239:GETTABLEKS     v6 = v7.Basic_DF1D
[594] :1239:LOADK          v8 = "Value"
[597] :1239:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[598] :1239:DUPCLOSURE     v8 = function()
-- proto pool id: 36
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :727:GETUPVAL       v0 = u_v5
[002] :727:LOADN          v1 = 1
[003] :727:GETUPVAL       v5 = u_v1
[005] :727:GETTABLEKS     v4 = v5.Data
[007] :727:GETTABLEKS     v3 = v4.DevilFruit
[009] :727:GETTABLEKS     v2 = v3.Value
[010] :727:CALL           v0(v1, v2)
[011] :727:RETURN         return
end
[603] :1239:CALL           v6:Connect(v8)
[605] :1240:GETTABLEKS     v7 = v1.Data
[607] :1240:GETTABLEKS     v6 = v7.Basic_DF1E
[608] :1240:LOADK          v8 = "Value"
[611] :1240:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[612] :1240:DUPCLOSURE     v8 = function()
-- proto pool id: 37
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :728:GETUPVAL       v0 = u_v5
[002] :728:LOADN          v1 = 1
[003] :728:GETUPVAL       v5 = u_v1
[005] :728:GETTABLEKS     v4 = v5.Data
[007] :728:GETTABLEKS     v3 = v4.DevilFruit
[009] :728:GETTABLEKS     v2 = v3.Value
[010] :728:CALL           v0(v1, v2)
[011] :728:RETURN         return
end
[617] :1240:CALL           v6:Connect(v8)
[619] :1241:GETTABLEKS     v7 = v1.Data
[621] :1241:GETTABLEKS     v6 = v7.Basic_DF1F
[622] :1241:LOADK          v8 = "Value"
[625] :1241:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[626] :1241:DUPCLOSURE     v8 = function()
-- proto pool id: 38
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :729:GETUPVAL       v0 = u_v5
[002] :729:LOADN          v1 = 1
[003] :729:GETUPVAL       v5 = u_v1
[005] :729:GETTABLEKS     v4 = v5.Data
[007] :729:GETTABLEKS     v3 = v4.DevilFruit
[009] :729:GETTABLEKS     v2 = v3.Value
[010] :729:CALL           v0(v1, v2)
[011] :729:RETURN         return
end
[631] :1241:CALL           v6:Connect(v8)
[633] :1242:GETTABLEKS     v7 = v1.Data
[635] :1242:GETTABLEKS     v6 = v7.Basic_DF2A
[636] :1242:LOADK          v8 = "Value"
[639] :1242:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[640] :1242:DUPCLOSURE     v8 = function()
-- proto pool id: 39
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :730:GETUPVAL       v0 = u_v5
[002] :730:LOADN          v1 = 2
[003] :730:GETUPVAL       v5 = u_v1
[005] :730:GETTABLEKS     v4 = v5.Data
[007] :730:GETTABLEKS     v3 = v4.DevilFruit2
[009] :730:GETTABLEKS     v2 = v3.Value
[010] :730:CALL           v0(v1, v2)
[011] :730:RETURN         return
end
[645] :1242:CALL           v6:Connect(v8)
[647] :1243:GETTABLEKS     v7 = v1.Data
[649] :1243:GETTABLEKS     v6 = v7.Basic_DF2B
[650] :1243:LOADK          v8 = "Value"
[653] :1243:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[654] :1243:DUPCLOSURE     v8 = function()
-- proto pool id: 40
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :731:GETUPVAL       v0 = u_v5
[002] :731:LOADN          v1 = 2
[003] :731:GETUPVAL       v5 = u_v1
[005] :731:GETTABLEKS     v4 = v5.Data
[007] :731:GETTABLEKS     v3 = v4.DevilFruit2
[009] :731:GETTABLEKS     v2 = v3.Value
[010] :731:CALL           v0(v1, v2)
[011] :731:RETURN         return
end
[659] :1243:CALL           v6:Connect(v8)
[661] :1244:GETTABLEKS     v7 = v1.Data
[663] :1244:GETTABLEKS     v6 = v7.Basic_DF2C
[664] :1244:LOADK          v8 = "Value"
[667] :1244:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[668] :1244:DUPCLOSURE     v8 = function()
-- proto pool id: 41
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :732:GETUPVAL       v0 = u_v5
[002] :732:LOADN          v1 = 2
[003] :732:GETUPVAL       v5 = u_v1
[005] :732:GETTABLEKS     v4 = v5.Data
[007] :732:GETTABLEKS     v3 = v4.DevilFruit2
[009] :732:GETTABLEKS     v2 = v3.Value
[010] :732:CALL           v0(v1, v2)
[011] :732:RETURN         return
end
[673] :1244:CALL           v6:Connect(v8)
[675] :1245:GETTABLEKS     v7 = v1.Data
[677] :1245:GETTABLEKS     v6 = v7.Basic_DF2D
[678] :1245:LOADK          v8 = "Value"
[681] :1245:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[682] :1245:DUPCLOSURE     v8 = function()
-- proto pool id: 42
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :733:GETUPVAL       v0 = u_v5
[002] :733:LOADN          v1 = 2
[003] :733:GETUPVAL       v5 = u_v1
[005] :733:GETTABLEKS     v4 = v5.Data
[007] :733:GETTABLEKS     v3 = v4.DevilFruit2
[009] :733:GETTABLEKS     v2 = v3.Value
[010] :733:CALL           v0(v1, v2)
[011] :733:RETURN         return
end
[687] :1245:CALL           v6:Connect(v8)
[689] :1246:GETTABLEKS     v7 = v1.Data
[691] :1246:GETTABLEKS     v6 = v7.Basic_DF2E
[692] :1246:LOADK          v8 = "Value"
[695] :1246:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[696] :1246:DUPCLOSURE     v8 = function()
-- proto pool id: 43
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :734:GETUPVAL       v0 = u_v5
[002] :734:LOADN          v1 = 2
[003] :734:GETUPVAL       v5 = u_v1
[005] :734:GETTABLEKS     v4 = v5.Data
[007] :734:GETTABLEKS     v3 = v4.DevilFruit2
[009] :734:GETTABLEKS     v2 = v3.Value
[010] :734:CALL           v0(v1, v2)
[011] :734:RETURN         return
end
[701] :1246:CALL           v6:Connect(v8)
[703] :1247:GETTABLEKS     v7 = v1.Data
[705] :1247:GETTABLEKS     v6 = v7.Basic_DF2F
[706] :1247:LOADK          v8 = "Value"
[709] :1247:CALL           v6 = v6:GetPropertyChangedSignal(v8)
[710] :1247:DUPCLOSURE     v8 = function()
-- proto pool id: 44
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :735:GETUPVAL       v0 = u_v5
[002] :735:LOADN          v1 = 2
[003] :735:GETUPVAL       v5 = u_v1
[005] :735:GETTABLEKS     v4 = v5.Data
[007] :735:GETTABLEKS     v3 = v4.DevilFruit2
[009] :735:GETTABLEKS     v2 = v3.Value
[010] :735:CALL           v0(v1, v2)
[011] :735:RETURN         return
end
[715] :1247:CALL           v6:Connect(v8)
[717] :1249:GETTABLEKS     v6 = v1.Data
[718] :1249:LOADK          v8 = "DevilFruit"
[721] :1249:CALL           v6 = v6:FindFirstChild(v8)
[723] :1250:GETTABLEKS     v7 = v1.Data
[724] :1250:LOADK          v9 = "DevilFruit2"
[727] :1250:CALL           v7 = v7:FindFirstChild(v9)
[728] :1253:MOVE           v8 = v5
[729] :1253:LOADN          v9 = 1
[731] :1253:GETTABLEKS     v10 = v6.Value
[732] :1253:CALL           v8(v9, v10)
[733] :1254:MOVE           v8 = v5
[734] :1254:LOADN          v9 = 2
[736] :1254:GETTABLEKS     v10 = v7.Value
[737] :1254:CALL           v8(v9, v10)
[739] :1256:GETIMPORT      v12 = script
[741] :1256:GETTABLEKS     v11 = v12.Parent
[743] :1256:GETTABLEKS     v10 = v11.Parent
[745] :1256:GETTABLEKS     v9 = v10.OrderedPair
[747] :1256:GETTABLEKS     v8 = v9.OnClientEvent
[748] :1256:DUPCLOSURE     v10 = function(p27, p28, p29, p30)
-- proto pool id: 45
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 104
-- size constants: 22
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[002] :745:GETIMPORT      v1 = script
[004] :745:GETTABLEKS     v0 = v1.Name
[006] :745:JUMPIFEQ       if p28 == v0 then -- goto #8
[007] :745:RETURN         return
end
[009] :746:JUMPXEQKS      if p29 ~= 1 then -- goto #12
[011] :746:JUMPXEQKS      if p29 == 7 then -- goto #24
end
[013] :747:GETGLOBAL      v0 = Power1
[015] :747:GETIMPORT      v5 = script
[017] :747:GETTABLEKS     v2 = v5.Name
[018] :747:LOADK          v3 = "Power"
[019] :747:MOVE           v4 = p29
[020] :747:CONCAT         v1 = v2 .. v3 .. v4
[021] :747:MOVE           v2 = p30
[022] :747:LOADNIL        v3 = nil
[023] :747:CALL           v0(v1, v2, v3)
end
[025] :749:JUMPXEQKS      if p29 ~= 2 then -- goto #28
[027] :749:JUMPXEQKS      if p29 == 8 then -- goto #40
end
[029] :750:GETGLOBAL      v0 = Power2
[031] :750:GETIMPORT      v5 = script
[033] :750:GETTABLEKS     v2 = v5.Name
[034] :750:LOADK          v3 = "Power"
[035] :750:MOVE           v4 = p29
[036] :750:CONCAT         v1 = v2 .. v3 .. v4
[037] :750:MOVE           v2 = p30
[038] :750:LOADNIL        v3 = nil
[039] :750:CALL           v0(v1, v2, v3)
end
[041] :752:JUMPXEQKS      if p29 ~= 3 then -- goto #44
[043] :752:JUMPXEQKS      if p29 == 9 then -- goto #56
end
[045] :753:GETGLOBAL      v0 = Power3
[047] :753:GETIMPORT      v5 = script
[049] :753:GETTABLEKS     v2 = v5.Name
[050] :753:LOADK          v3 = "Power"
[051] :753:MOVE           v4 = p29
[052] :753:CONCAT         v1 = v2 .. v3 .. v4
[053] :753:MOVE           v2 = p30
[054] :753:LOADNIL        v3 = nil
[055] :753:CALL           v0(v1, v2, v3)
end
[057] :755:JUMPXEQKS      if p29 ~= 4 then -- goto #60
[059] :755:JUMPXEQKS      if p29 == 10 then -- goto #72
end
[061] :756:GETGLOBAL      v0 = Power4
[063] :756:GETIMPORT      v5 = script
[065] :756:GETTABLEKS     v2 = v5.Name
[066] :756:LOADK          v3 = "Power"
[067] :756:MOVE           v4 = p29
[068] :756:CONCAT         v1 = v2 .. v3 .. v4
[069] :756:MOVE           v2 = p30
[070] :756:LOADNIL        v3 = nil
[071] :756:CALL           v0(v1, v2, v3)
end
[073] :758:JUMPXEQKS      if p29 ~= 5 then -- goto #76
[075] :758:JUMPXEQKS      if p29 == 11 then -- goto #88
end
[077] :759:GETGLOBAL      v0 = Power5
[079] :759:GETIMPORT      v5 = script
[081] :759:GETTABLEKS     v2 = v5.Name
[082] :759:LOADK          v3 = "Power"
[083] :759:MOVE           v4 = p29
[084] :759:CONCAT         v1 = v2 .. v3 .. v4
[085] :759:MOVE           v2 = p30
[086] :759:LOADNIL        v3 = nil
[087] :759:CALL           v0(v1, v2, v3)
end
[089] :761:JUMPXEQKS      if p29 ~= 6 then -- goto #92
[091] :761:JUMPXEQKS      if p29 == 12 then -- goto #104
end
[093] :762:GETGLOBAL      v0 = Power6
[095] :762:GETIMPORT      v5 = script
[097] :762:GETTABLEKS     v2 = v5.Name
[098] :762:LOADK          v3 = "Power"
[099] :762:MOVE           v4 = p29
[100] :762:CONCAT         v1 = v2 .. v3 .. v4
[101] :762:MOVE           v2 = p30
[102] :762:LOADNIL        v3 = nil
[103] :762:CALL           v0(v1, v2, v3)
end
[104] :764:RETURN         return
end
[751] :1256:CALL           v8:Connect(v10)
[753] :1278:GETIMPORT      v10 = script
[755] :1278:GETTABLEKS     v9 = v10.Controller
[757] :1278:GETTABLEKS     v8 = v9.Event
[758] :1278:DUPCLOSURE     v10 = function(p31, p32, p33)
-- proto pool id: 46
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 169
-- size constants: 15
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :767:GETIMPORT      v3 = script
[004] :767:GETTABLEKS     v1 = v3.Name
[005] :767:LOADK          v2 = "Power1"
[006] :767:CONCAT         v0 = v1 .. v2
[008] :767:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #15
[010] :767:GETGLOBAL      v0 = Power1
[011] :767:MOVE           v1 = p31
[012] :767:MOVE           v2 = p32
[013] :767:MOVE           v3 = p33
[014] :767:CALL           v0(v1, v2, v3)
end
[016] :768:GETIMPORT      v3 = script
[018] :768:GETTABLEKS     v1 = v3.Name
[019] :768:LOADK          v2 = "Power2"
[020] :768:CONCAT         v0 = v1 .. v2
[022] :768:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #29
[024] :768:GETGLOBAL      v0 = Power2
[025] :768:MOVE           v1 = p31
[026] :768:MOVE           v2 = p32
[027] :768:MOVE           v3 = p33
[028] :768:CALL           v0(v1, v2, v3)
end
[030] :769:GETIMPORT      v3 = script
[032] :769:GETTABLEKS     v1 = v3.Name
[033] :769:LOADK          v2 = "Power3"
[034] :769:CONCAT         v0 = v1 .. v2
[036] :769:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #43
[038] :769:GETGLOBAL      v0 = Power3
[039] :769:MOVE           v1 = p31
[040] :769:MOVE           v2 = p32
[041] :769:MOVE           v3 = p33
[042] :769:CALL           v0(v1, v2, v3)
end
[044] :770:GETIMPORT      v3 = script
[046] :770:GETTABLEKS     v1 = v3.Name
[047] :770:LOADK          v2 = "Power4"
[048] :770:CONCAT         v0 = v1 .. v2
[050] :770:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #57
[052] :770:GETGLOBAL      v0 = Power4
[053] :770:MOVE           v1 = p31
[054] :770:MOVE           v2 = p32
[055] :770:MOVE           v3 = p33
[056] :770:CALL           v0(v1, v2, v3)
end
[058] :771:GETIMPORT      v3 = script
[060] :771:GETTABLEKS     v1 = v3.Name
[061] :771:LOADK          v2 = "Power5"
[062] :771:CONCAT         v0 = v1 .. v2
[064] :771:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #71
[066] :771:GETGLOBAL      v0 = Power5
[067] :771:MOVE           v1 = p31
[068] :771:MOVE           v2 = p32
[069] :771:MOVE           v3 = p33
[070] :771:CALL           v0(v1, v2, v3)
end
[072] :772:GETIMPORT      v3 = script
[074] :772:GETTABLEKS     v1 = v3.Name
[075] :772:LOADK          v2 = "Power6"
[076] :772:CONCAT         v0 = v1 .. v2
[078] :772:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #85
[080] :772:GETGLOBAL      v0 = Power6
[081] :772:MOVE           v1 = p31
[082] :772:MOVE           v2 = p32
[083] :772:MOVE           v3 = p33
[084] :772:CALL           v0(v1, v2, v3)
end
[086] :773:GETIMPORT      v3 = script
[088] :773:GETTABLEKS     v1 = v3.Name
[089] :773:LOADK          v2 = "Power7"
[090] :773:CONCAT         v0 = v1 .. v2
[092] :773:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #99
[094] :773:GETGLOBAL      v0 = Power1
[095] :773:MOVE           v1 = p31
[096] :773:MOVE           v2 = p32
[097] :773:MOVE           v3 = p33
[098] :773:CALL           v0(v1, v2, v3)
end
[100] :774:GETIMPORT      v3 = script
[102] :774:GETTABLEKS     v1 = v3.Name
[103] :774:LOADK          v2 = "Power8"
[104] :774:CONCAT         v0 = v1 .. v2
[106] :774:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #113
[108] :774:GETGLOBAL      v0 = Power2
[109] :774:MOVE           v1 = p31
[110] :774:MOVE           v2 = p32
[111] :774:MOVE           v3 = p33
[112] :774:CALL           v0(v1, v2, v3)
end
[114] :775:GETIMPORT      v3 = script
[116] :775:GETTABLEKS     v1 = v3.Name
[117] :775:LOADK          v2 = "Power9"
[118] :775:CONCAT         v0 = v1 .. v2
[120] :775:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #127
[122] :775:GETGLOBAL      v0 = Power3
[123] :775:MOVE           v1 = p31
[124] :775:MOVE           v2 = p32
[125] :775:MOVE           v3 = p33
[126] :775:CALL           v0(v1, v2, v3)
end
[128] :776:GETIMPORT      v3 = script
[130] :776:GETTABLEKS     v1 = v3.Name
[131] :776:LOADK          v2 = "Power10"
[132] :776:CONCAT         v0 = v1 .. v2
[134] :776:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #141
[136] :776:GETGLOBAL      v0 = Power4
[137] :776:MOVE           v1 = p31
[138] :776:MOVE           v2 = p32
[139] :776:MOVE           v3 = p33
[140] :776:CALL           v0(v1, v2, v3)
end
[142] :777:GETIMPORT      v3 = script
[144] :777:GETTABLEKS     v1 = v3.Name
[145] :777:LOADK          v2 = "Power11"
[146] :777:CONCAT         v0 = v1 .. v2
[148] :777:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #155
[150] :777:GETGLOBAL      v0 = Power5
[151] :777:MOVE           v1 = p31
[152] :777:MOVE           v2 = p32
[153] :777:MOVE           v3 = p33
[154] :777:CALL           v0(v1, v2, v3)
end
[156] :778:GETIMPORT      v3 = script
[158] :778:GETTABLEKS     v1 = v3.Name
[159] :778:LOADK          v2 = "Power12"
[160] :778:CONCAT         v0 = v1 .. v2
[162] :778:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #169
[164] :778:GETGLOBAL      v0 = Power6
[165] :778:MOVE           v1 = p31
[166] :778:MOVE           v2 = p32
[167] :778:MOVE           v3 = p33
[168] :778:CALL           v0(v1, v2, v3)
end
[169] :779:RETURN         return
end
[761] :1278:CALL           v8:Connect(v10)
[763] :1293:GETIMPORT      v10 = script
[765] :1293:GETTABLEKS     v9 = v10.Parent
[767] :1293:GETTABLEKS     v8 = v9.Parent
[768] :1293:LOADK          v10 = "DPAD"
[771] :1293:CALL           v8 = v8:WaitForChild(v10)
[773] :1293:SETGLOBAL      DPAD = v8
[774] :1294:DUPCLOSURE     
local function Conser(p34, p35, p36)
-- proto pool id: 47
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 242
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 8
-- is typed: false
[001] :783:GETUPVAL       v3 = u_v1
[003] :783:GETTABLEKS     v2 = v3.Data
[005] :783:GETTABLEKS     v1 = v2.DevilFruit
[007] :783:GETTABLEKS     v0 = v1.Value
[009] :783:GETIMPORT      v2 = script
[011] :783:GETTABLEKS     v1 = v2.Name
[013] :783:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #122
[015] :784:GETGLOBAL      v1 = DPAD
[017] :784:GETTABLEKS     v0 = v1.Value
[019] :784:JUMPXEQKN      if v0 == 1 then -- goto #32
[021] :784:GETGLOBAL      v0 = Power1
[023] :784:GETIMPORT      v4 = script
[025] :784:GETTABLEKS     v2 = v4.Name
[026] :784:LOADK          v3 = "Power1"
[027] :784:CONCAT         v1 = v2 .. v3
[028] :784:MOVE           v2 = p35
[029] :784:MOVE           v3 = p36
[030] :784:CALL           v0(v1, v2, v3)
[031] :784:RETURN         return
end
[033] :785:GETGLOBAL      v1 = DPAD
[035] :785:GETTABLEKS     v0 = v1.Value
[037] :785:JUMPXEQKN      if v0 == 2 then -- goto #50
[039] :785:GETGLOBAL      v0 = Power2
[041] :785:GETIMPORT      v4 = script
[043] :785:GETTABLEKS     v2 = v4.Name
[044] :785:LOADK          v3 = "Power2"
[045] :785:CONCAT         v1 = v2 .. v3
[046] :785:MOVE           v2 = p35
[047] :785:MOVE           v3 = p36
[048] :785:CALL           v0(v1, v2, v3)
[049] :785:RETURN         return
end
[051] :786:GETGLOBAL      v1 = DPAD
[053] :786:GETTABLEKS     v0 = v1.Value
[055] :786:JUMPXEQKN      if v0 == 3 then -- goto #68
[057] :786:GETGLOBAL      v0 = Power3
[059] :786:GETIMPORT      v4 = script
[061] :786:GETTABLEKS     v2 = v4.Name
[062] :786:LOADK          v3 = "Power3"
[063] :786:CONCAT         v1 = v2 .. v3
[064] :786:MOVE           v2 = p35
[065] :786:MOVE           v3 = p36
[066] :786:CALL           v0(v1, v2, v3)
[067] :786:RETURN         return
end
[069] :787:GETGLOBAL      v1 = DPAD
[071] :787:GETTABLEKS     v0 = v1.Value
[073] :787:JUMPXEQKN      if v0 == 4 then -- goto #86
[075] :787:GETGLOBAL      v0 = Power4
[077] :787:GETIMPORT      v4 = script
[079] :787:GETTABLEKS     v2 = v4.Name
[080] :787:LOADK          v3 = "Power4"
[081] :787:CONCAT         v1 = v2 .. v3
[082] :787:MOVE           v2 = p35
[083] :787:MOVE           v3 = p36
[084] :787:CALL           v0(v1, v2, v3)
[085] :787:RETURN         return
end
[087] :788:GETGLOBAL      v1 = DPAD
[089] :788:GETTABLEKS     v0 = v1.Value
[091] :788:JUMPXEQKN      if v0 == 5 then -- goto #104
[093] :788:GETGLOBAL      v0 = Power5
[095] :788:GETIMPORT      v4 = script
[097] :788:GETTABLEKS     v2 = v4.Name
[098] :788:LOADK          v3 = "Power5"
[099] :788:CONCAT         v1 = v2 .. v3
[100] :788:MOVE           v2 = p35
[101] :788:MOVE           v3 = p36
[102] :788:CALL           v0(v1, v2, v3)
[103] :788:RETURN         return
end
[105] :789:GETGLOBAL      v1 = DPAD
[107] :789:GETTABLEKS     v0 = v1.Value
[109] :789:JUMPXEQKN      if v0 == 6 then -- goto #242
[111] :789:GETGLOBAL      v0 = Power6
[113] :789:GETIMPORT      v4 = script
[115] :789:GETTABLEKS     v2 = v4.Name
[116] :789:LOADK          v3 = "Power6"
[117] :789:CONCAT         v1 = v2 .. v3
[118] :789:MOVE           v2 = p35
[119] :789:MOVE           v3 = p36
[120] :789:CALL           v0(v1, v2, v3)
[121] :789:RETURN         return
end
[122] :791:GETUPVAL       v3 = u_v1
[124] :791:GETTABLEKS     v2 = v3.Data
[126] :791:GETTABLEKS     v1 = v2.DevilFruit2
[128] :791:GETTABLEKS     v0 = v1.Value
[130] :791:GETIMPORT      v2 = script
[132] :791:GETTABLEKS     v1 = v2.Name
[134] :791:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #242
[136] :792:GETGLOBAL      v1 = DPAD
[138] :792:GETTABLEKS     v0 = v1.Value
[140] :792:JUMPXEQKN      if v0 == 7 then -- goto #153
[142] :792:GETGLOBAL      v0 = Power1
[144] :792:GETIMPORT      v4 = script
[146] :792:GETTABLEKS     v2 = v4.Name
[147] :792:LOADK          v3 = "Power7"
[148] :792:CONCAT         v1 = v2 .. v3
[149] :792:MOVE           v2 = p35
[150] :792:MOVE           v3 = p36
[151] :792:CALL           v0(v1, v2, v3)
[152] :792:RETURN         return
end
[154] :793:GETGLOBAL      v1 = DPAD
[156] :793:GETTABLEKS     v0 = v1.Value
[158] :793:JUMPXEQKN      if v0 == 8 then -- goto #171
[160] :793:GETGLOBAL      v0 = Power2
[162] :793:GETIMPORT      v4 = script
[164] :793:GETTABLEKS     v2 = v4.Name
[165] :793:LOADK          v3 = "Power8"
[166] :793:CONCAT         v1 = v2 .. v3
[167] :793:MOVE           v2 = p35
[168] :793:MOVE           v3 = p36
[169] :793:CALL           v0(v1, v2, v3)
[170] :793:RETURN         return
end
[172] :794:GETGLOBAL      v1 = DPAD
[174] :794:GETTABLEKS     v0 = v1.Value
[176] :794:JUMPXEQKN      if v0 == 9 then -- goto #189
[178] :794:GETGLOBAL      v0 = Power3
[180] :794:GETIMPORT      v4 = script
[182] :794:GETTABLEKS     v2 = v4.Name
[183] :794:LOADK          v3 = "Power9"
[184] :794:CONCAT         v1 = v2 .. v3
[185] :794:MOVE           v2 = p35
[186] :794:MOVE           v3 = p36
[187] :794:CALL           v0(v1, v2, v3)
[188] :794:RETURN         return
end
[190] :795:GETGLOBAL      v1 = DPAD
[192] :795:GETTABLEKS     v0 = v1.Value
[194] :795:JUMPXEQKN      if v0 == 10 then -- goto #207
[196] :795:GETGLOBAL      v0 = Power4
[198] :795:GETIMPORT      v4 = script
[200] :795:GETTABLEKS     v2 = v4.Name
[201] :795:LOADK          v3 = "Power10"
[202] :795:CONCAT         v1 = v2 .. v3
[203] :795:MOVE           v2 = p35
[204] :795:MOVE           v3 = p36
[205] :795:CALL           v0(v1, v2, v3)
[206] :795:RETURN         return
end
[208] :796:GETGLOBAL      v1 = DPAD
[210] :796:GETTABLEKS     v0 = v1.Value
[212] :796:JUMPXEQKN      if v0 == 11 then -- goto #225
[214] :796:GETGLOBAL      v0 = Power5
[216] :796:GETIMPORT      v4 = script
[218] :796:GETTABLEKS     v2 = v4.Name
[219] :796:LOADK          v3 = "Power11"
[220] :796:CONCAT         v1 = v2 .. v3
[221] :796:MOVE           v2 = p35
[222] :796:MOVE           v3 = p36
[223] :796:CALL           v0(v1, v2, v3)
[224] :796:RETURN         return
end
[226] :797:GETGLOBAL      v1 = DPAD
[228] :797:GETTABLEKS     v0 = v1.Value
[230] :797:JUMPXEQKN      if v0 == 12 then -- goto #242
[232] :797:GETGLOBAL      v0 = Power6
[234] :797:GETIMPORT      v4 = script
[236] :797:GETTABLEKS     v2 = v4.Name
[237] :797:LOADK          v3 = "Power12"
[238] :797:CONCAT         v1 = v2 .. v3
[239] :797:MOVE           v2 = p35
[240] :797:MOVE           v3 = p36
[241] :797:CALL           v0(v1, v2, v3)
end
end
end
[242] :800:RETURN         return
end
v8 = Conser
[777] :1294:SETGLOBAL      Conser = v8
[778] :1313:NEWCLOSURE     
local function UpdateDPAD()
-- proto pool id: 48
-- num upvalues: 4
-- num inner protos: 0
-- size instructions: 145
-- size constants: 25
-- lineinfo gap: 24
-- max stack size: 11
-- is typed: false
[001] :802:GETUPVAL       v0 = u_v3
[003] :802:JUMPXEQKB      if v0 == true then -- goto #145
[005] :803:GETGLOBAL      v1 = DPAD
[007] :803:GETTABLEKS     v0 = v1.Value
[008] :803:LOADN          v1 = 1
[010] :803:JUMPIFNOTLE    if v1 <= v0 then -- goto #75
[012] :803:GETGLOBAL      v1 = DPAD
[014] :803:GETTABLEKS     v0 = v1.Value
[015] :803:LOADN          v1 = 6
[017] :803:JUMPIFNOTLE    if v0 <= v1 then -- goto #75
[018] :803:GETUPVAL       v1 = u_v6
[020] :803:GETTABLEKS     v0 = v1.Value
[022] :803:GETIMPORT      v2 = script
[024] :803:GETTABLEKS     v1 = v2.Name
[026] :803:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #75
[028] :804:GETIMPORT      v0 = game
[029] :804:LOADK          v2 = "ContextActionService"
[032] :804:CALL           v0 = v0:GetService(v2)
[034] :804:GETIMPORT      v5 = script
[036] :804:GETTABLEKS     v3 = v5.Name
[037] :804:LOADK          v4 = "Conser2"
[038] :804:CONCAT         v2 = v3 .. v4
[041] :804:CALL           v0:UnbindAction(v2)
[043] :805:GETIMPORT      v0 = game
[044] :805:LOADK          v2 = "ContextActionService"
[047] :805:CALL           v0 = v0:GetService(v2)
[049] :805:GETIMPORT      v5 = script
[051] :805:GETTABLEKS     v3 = v5.Name
[052] :805:LOADK          v4 = "Cons1"
[053] :805:CONCAT         v2 = v3 .. v4
[055] :805:GETGLOBAL      v3 = Conser
[056] :805:LOADB          v4 = false
[058] :805:GETIMPORT      v6 = Enum.KeyCode
[059] :805:GETUPVAL       v10 = u_v1
[061] :805:GETTABLEKS     v9 = v10.Data
[063] :805:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[065] :805:GETTABLEKS     v7 = v8.Value
[066] :805:GETTABLE       v5 = v6[v7]
[069] :805:CALL           v0:BindAction(v2, v3, v4, v5)
[071] :806:GETIMPORT      v0 = print
[072] :806:LOADK          v1 = "BINDING 1"
[073] :806:CALL           v0(v1)
[074] :806:RETURN         return
end
end
end
[076] :807:GETGLOBAL      v1 = DPAD
[078] :807:GETTABLEKS     v0 = v1.Value
[079] :807:LOADN          v1 = 7
[081] :807:JUMPIFNOTLE    if v1 <= v0 then -- goto #145
[083] :807:GETGLOBAL      v1 = DPAD
[085] :807:GETTABLEKS     v0 = v1.Value
[086] :807:LOADN          v1 = 12
[088] :807:JUMPIFNOTLE    if v0 <= v1 then -- goto #145
[089] :807:GETUPVAL       v1 = u_v7
[091] :807:GETTABLEKS     v0 = v1.Value
[093] :807:GETIMPORT      v2 = script
[095] :807:GETTABLEKS     v1 = v2.Name
[097] :807:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #145
[099] :808:GETIMPORT      v0 = game
[100] :808:LOADK          v2 = "ContextActionService"
[103] :808:CALL           v0 = v0:GetService(v2)
[105] :808:GETIMPORT      v5 = script
[107] :808:GETTABLEKS     v3 = v5.Name
[108] :808:LOADK          v4 = "Conser1"
[109] :808:CONCAT         v2 = v3 .. v4
[112] :808:CALL           v0:UnbindAction(v2)
[114] :809:GETIMPORT      v0 = game
[115] :809:LOADK          v2 = "ContextActionService"
[118] :809:CALL           v0 = v0:GetService(v2)
[120] :809:GETIMPORT      v5 = script
[122] :809:GETTABLEKS     v3 = v5.Name
[123] :809:LOADK          v4 = "Cons2"
[124] :809:CONCAT         v2 = v3 .. v4
[126] :809:GETGLOBAL      v3 = Conser
[127] :809:LOADB          v4 = false
[129] :809:GETIMPORT      v6 = Enum.KeyCode
[130] :809:GETUPVAL       v10 = u_v1
[132] :809:GETTABLEKS     v9 = v10.Data
[134] :809:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[136] :809:GETTABLEKS     v7 = v8.Value
[137] :809:GETTABLE       v5 = v6[v7]
[140] :809:CALL           v0:BindAction(v2, v3, v4, v5)
[142] :810:GETIMPORT      v0 = print
[143] :810:LOADK          v1 = "BINDING 2"
[144] :810:CALL           v0(v1)
end
end
end
end
[145] :813:RETURN         return
end
v8 = UpdateDPAD
[784] :1313:SETGLOBAL      UpdateDPAD = v8
[786] :1326:GETTABLEKS     v8 = v6.Value
[788] :1326:GETIMPORT      v10 = script
[790] :1326:GETTABLEKS     v9 = v10.Name
[792] :1326:JUMPIFEQ       if v8 == v9 then -- goto #801
[794] :1326:GETTABLEKS     v8 = v7.Value
[796] :1326:GETIMPORT      v10 = script
[798] :1326:GETTABLEKS     v9 = v10.Name
[800] :1326:JUMPIFNOTEQ    if v8 ~= v9 then -- goto #802
end
[801] :1327:LOADB          v3 = true
end
[803] :1329:GETGLOBAL      v8 = DPAD
[804] :1329:LOADK          v10 = "Value"
[807] :1329:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[808] :1329:DUPCLOSURE     v10 = function()
-- proto pool id: 49
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 4
-- size constants: 1
-- lineinfo gap: 24
-- max stack size: 1
-- is typed: false
[002] :817:GETGLOBAL      v0 = UpdateDPAD
[003] :817:CALL           v0()
[004] :817:RETURN         return
end
[811] :1329:CALL           v8:Connect(v10)
[813] :1330:GETGLOBAL      v8 = UpdateDPAD
[814] :1330:CALL           v8()
[816] :1330:RETURN         return
