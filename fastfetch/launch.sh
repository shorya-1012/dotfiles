LOGO_DIR="$HOME/.config/fastfetch/images/books"

RANDOM_LOGO=$(find "$LOGO_DIR" -type f | shuf -n 1)

fastfetch --logo "$RANDOM_LOGO" --logo-type kitty
