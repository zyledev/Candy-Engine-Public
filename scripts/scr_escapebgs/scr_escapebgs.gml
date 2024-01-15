function scr_escapebgs()
{
    if global.panic
    {
        layer_change_background(bg_waferback1, bgwafer_escape2)
        layer_change_background(bg_waferback2, bgwafer_escape1)
        layer_change_background(bg_waferclouds, bgwafer_escape3)
        layer_change_background(bg_wafersun, bgwafer_escape5)
        layer_change_background(bg_wafersky, bgwafer_escape4)
        layer_change_background(bg_entryway2_clouds, bg_entrywayescapeclouds)
        layer_change_background(bg_entryway2_sky, bg_entrywaynightsky)
        layer_change_background(bg_entryway2_clouds, bg_entrywayescapeclouds)
        layer_change_background(bg_entryway2_buildings, bg_escapebuildingsentryway)
        layer_change_background(bg_entryway2_sun, bg_entrywayescapemoon)
        layer_change_background(entryway_endroombg1, entryway_endroomescape1)
        layer_change_background(entryway_endroombg2, entryway_endroomescape2)
        layer_change_background(entryway_endroombg3, entryway_endroomescape3)
        layer_change_background(entryway_endroombg4, entryway_endroomescape4)
        layer_change_background(entryway_endroombg5, entryway_endroomescape5)
		
		layer_change_background(nextsky, bg_steamyparkescape)
    }

}

