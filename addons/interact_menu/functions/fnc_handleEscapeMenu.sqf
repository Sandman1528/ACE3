/*
 * Author: PabstMirror
 * Handle the escape key being pressed.
 *
 * Arguments:
 * 0: Escape menu display that should be closed <DISPLAY><OPTIONAL>
 *
 * Return Value:
 * Nothing
 *
 * Public: No
 */
#include "script_component.hpp"

if (GVAR(openedMenuType) < 0) exitWith {};

params [["_display", displayNull, [displayNull]]];
TRACE_2("handleEscapeMenu",_display,isNull _display);

if (!isNull _display) then {
    _display closeDisplay 0;
};

GVAR(actionSelected) = false;
[GVAR(openedMenuType), false] call FUNC(keyUp);
