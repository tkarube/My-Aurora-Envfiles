#!/bin/bash

if pgrep -x "wezterm-gui" >/dev/null; then
  WINDOW_ID=$(kdotool search --class "wezterm" | head -1)

  if [ -n "$WINDOW_ID" ]; then
    ACTIVE_WINDOW=$(kdotool getactivewindow)

    if [ "$WINDOW_ID" = "$ACTIVE_WINDOW" ]; then
      kdotool windowminimize "$WINDOW_ID"
    else
      kdotool windowactivate "$WINDOW_ID"
    fi
  fi
else
  flatpak run org.wezfurlong.wezterm &
fi
