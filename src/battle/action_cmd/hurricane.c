#include "common.h"
#include "hud_element.h"

#define NAMESPACE action_command_hurricane

extern s32 D_80294420;
extern HudScript HudScript_BlueMeter[];
extern HudScript HudScript_AButton[];
extern HudScript HudScript_BButton[];
extern HudScript HudScript_100pct[];

ApiStatus func_802A9000_42F6E0(void) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    BattleStatus* battleStatus = &gBattleStatus;
    s32 hudElement;

    battleStatus->unk_82 = 5;
    battleStatus->unk_434 = &D_80294420;
    if (battleStatus->unk_83 == 0) {
        battleStatus->actionSuccess = 0;
        return ApiStatus_DONE2;
    }

    func_80268858();

    actionCommandStatus->actionCommandID = 20;
    actionCommandStatus->unk_6C = 30;
    actionCommandStatus->hudElementX = -48;
    actionCommandStatus->state = 0;
    actionCommandStatus->unk_60 = 0;
    actionCommandStatus->barFillLevel = 0;
    actionCommandStatus->unk_48 = 0;
    actionCommandStatus->unk_68 = 0;
    actionCommandStatus->hudElementY = 80;

    hudElement = hud_element_create(HudScript_AButton);
    actionCommandStatus->hudElements[0] = hudElement;
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    hud_element_set_render_depth(hudElement, 0);

    hudElement = hud_element_create(HudScript_BButton);
    actionCommandStatus->hudElements[2] = hudElement;
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    hud_element_set_render_depth(hudElement, 0);

    hudElement = hud_element_create(HudScript_BlueMeter);
    actionCommandStatus->hudElements[1] = hudElement;
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY + 28);
    hud_element_set_render_depth(hudElement, 0);
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);

    hudElement = hud_element_create(HudScript_100pct);
    actionCommandStatus->hudElements[4] = hudElement;
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY + 28);
    hud_element_set_render_depth(hudElement, 0);
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);

    return ApiStatus_DONE2;
}

ApiStatus func_802A91A0_42F880(Evt* script, s32 isInitialCall) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    BattleStatus* battleStatus = &gBattleStatus;
    s32* args = script->ptrReadPos;

    if (battleStatus->unk_83 == 0) {
        battleStatus->actionSuccess = 0;
        return ApiStatus_DONE2;
    }

    func_80268858();

    actionCommandStatus->unk_4E = evt_get_variable(script, *args++);
    actionCommandStatus->unk_52 = evt_get_variable(script, *args++);
    actionCommandStatus->unk_50 = evt_get_variable(script, *args++);
    actionCommandStatus->unk_50 = func_80268224(actionCommandStatus->unk_50);
    actionCommandStatus->unk_64 = evt_get_variable(script, *args++);

    actionCommandStatus->unk_60 = 0;
    actionCommandStatus->barFillLevel = 0;
    actionCommandStatus->unk_48 = 0;
    battleStatus->actionSuccess = 0;
    battleStatus->unk_86 = 0;
    actionCommandStatus->state = 10;
    battleStatus->flags1 &= ~0x8000;

    func_80269118();

    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "battle/action_cmd/hurricane", func_802A92A0_42F980);

void func_802A97AC_42FE8C(void) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    s32 hudY;
    s32 hudX;
    s32 hudElement;

    hud_element_draw_clipped(actionCommandStatus->hudElements[0]);
    hud_element_draw_clipped(actionCommandStatus->hudElements[2]);

    hudElement = actionCommandStatus->hudElements[1];
    hud_element_draw_clipped(hudElement);
    hud_element_get_render_pos(hudElement, &hudX, &hudY);

    if (actionCommandStatus->unk_68 == 0) {
        func_80268770(hudX, hudY, actionCommandStatus->barFillLevel / 100);
    } else {
        func_8026880C(hudX, hudY, actionCommandStatus->barFillLevel / 100);
    }

    hud_element_draw_clipped(actionCommandStatus->hudElements[4]);
}

void func_802A9894_42FF74(void) {
    hud_element_free(gActionCommandStatus.hudElements[0]);
    hud_element_free(gActionCommandStatus.hudElements[1]);
    hud_element_free(gActionCommandStatus.hudElements[2]);
    hud_element_free(gActionCommandStatus.hudElements[4]);
}
