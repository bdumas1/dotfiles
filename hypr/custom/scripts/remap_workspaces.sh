#!/bin/bash
sleep 0.5
hyprctl dispatch 'hl.dsp.workspace.move({workspace="1", monitor="HDMI-A-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="2", monitor="HDMI-A-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="3", monitor="HDMI-A-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="4", monitor="HDMI-A-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="5", monitor="HDMI-A-1"})'

hyprctl dispatch 'hl.dsp.workspace.move({workspace="6", monitor="eDP-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="7", monitor="eDP-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="8", monitor="eDP-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="9", monitor="eDP-1"})'
hyprctl dispatch 'hl.dsp.workspace.move({workspace="10", monitor="eDP-1"})'
