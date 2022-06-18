
function FCSmartShape_Test_Unlinkable(shapeid, staff)
    local smart_shape = finale.FCSmartShape()
    if AssureTrue(smart_shape:Load(shapeid), "FCSmartShape_Test_Unlinkable: FCSmartShape:Load()") then
        local updater_func = function(obj, propertyname)
            PropertyTest(obj, obj:ClassName(), propertyname)
            if not obj[propertyname] then return nil end
            return function(value)
                if value then
                    obj[propertyname] = value
                end
                return obj[propertyname]
            end
        end
        local check_terminator = function (getter_method)
            if not FunctionTest(smart_shape, "FCSmartShape", getter_method) then return end
            local segment = smart_shape[getter_method](smart_shape)
            if not AssureNonNil(segment, "FCSmartShape_Test_Unlinkable got "..getter_method..".") then return end            
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "BreakOffsetX"), "Reload", nil, 12, staff_to_part[staff])
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "BreakOffsetY"), "Reload", nil, -12, staff_to_part[staff])
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "ControlPoint1OffsetX"), "Reload", nil, -12, staff_to_part[staff])
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "ControlPoint1OffsetY"), "Reload", nil, 12, staff_to_part[staff])
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "ControlPoint2OffsetX"), "Reload", nil, 12, staff_to_part[staff])
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "ControlPoint2OffsetY"), "Reload", nil, -12, staff_to_part[staff])
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "EndpointOffsetX"), "Reload", nil, -12, staff_to_part[staff])
            UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", updater_func(segment, "EndpointOffsetY"), "Reload", nil, 12, staff_to_part[staff])
        end
        check_terminator("GetTerminateSegmentLeft")
        check_terminator("GetTerminateSegmentRight")
        UnlinkableNumberPropertyTest(smart_shape, "FCSmartShape", "Visible", "Reload", nil, 12, staff_to_part[staff])
    end
end

-- Call:
FCSmartShape_Test_Unlinkable(1, 3) -- hairpin bar 25-6 (visible 23)
FCSmartShape_Test_Unlinkable(2, 2) -- slurt bar 25-6 (visible 23)
