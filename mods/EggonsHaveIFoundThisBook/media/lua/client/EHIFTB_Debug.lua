-- local function forgetItem(item)
--     local identifier = EHIFTB.getItemIdentifier(item)
--      EHIFTB.getPlayerMemory().rememberedBooks[identifier] = nil
-- end
-- local function multiplyItem(item)
--     local container = item:getContainer()
--     local fullType = item:getFullType()
--     local newItem = container:AddItem(fullType)
--     if item:isRecordedMedia() then
--     -- newItem:setRecordedMediaIndex(item:getRecordedMediaIndex())
--     end
-- end
-- local function testFn(item)
--     print("item:getStaticModel()", item:getStaticModel())
--     print("Line height: ", getTextManager():getFontFromEnum(ISToolTip.GetFont()):getLineHeight())
--     print("Line height 2: ", getTextManager():MeasureStringY(ISToolTip.GetFont(), "X"))
--     print("item:getStaticModel()", item:getStaticModel())
-- end
-- local function add_ForgetItem(player, context, items)
--     local item
--     if items[1].items then
--         item = items[1].items[1]
--     else -- if right-clicked in hotbar
--         item = items[1]
--     end
--     if EHIFTB.isValidEHIFTBItem(item, "forget") then
--         context:addOption("Forget item", item, forgetItem)
--         context:addOption("Multiply item", item, multiplyItem)
--         context:addOption("Test", item, testFn)
--     end
-- end
-- Events.OnFillInventoryObjectContextMenu.Add(add_ForgetItem)
