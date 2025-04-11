from kitty.fast_data_types import current_focused_os_window_id, background_opacity_of
from kitty.fast_data_types import get_boss
import os
import re


opaque = 1.0
config_src = "~/.config/kitty/kitty.conf"


def main(args):
    return "toggle"


def handle_result(args, answer, target_window_id, boss):
    os_window_id = current_focused_os_window_id()
    current_opacity = background_opacity_of(os_window_id)

    # Déterminer la nouvelle opacité
    new_opacity = get_conf_opacity() if current_opacity == opaque else opaque

    # Appliquer uniquement à la fenêtre courante
    boss.set_background_opacity(str(new_opacity))


def get_conf_opacity():
    config_path = os.path.expanduser(config_src)
    if os.path.exists(config_path):
        try:
            with open(config_path, "r") as f:
                for line in f:
                    line = line.strip()
                    if line.startswith("background_opacity"):
                        parts = line.split()
                        if len(parts) >= 2:
                            try:
                                opacity = float(parts[1])
                                return max(0.0, min(1.0, opacity))
                            except ValueError:
                                pass
        except Exception:
            pass
    return opaque
