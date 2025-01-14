#ifndef BATTLE_ITEM_DIZZY_DIAL
#define BATTLE_ITEM_DIZZY_DIAL

#include "common.h"
#include "script_api/battle.h"

#undef NAMESPACE
#define NAMESPACE battle_item_dizzy_dial

ApiStatus func_80252B3C(Evt* script, s32 isInitialCall);
ApiStatus N(func_802A1270_727B80)(Evt* script, s32 isInitialCall);

extern EvtScript N(UseItemWithEffect);
extern EvtScript N(PlayerGoHome);

#endif
