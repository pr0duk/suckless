#!/bin/bash

flameshot gui --raw | xclip -selection clipboard -target image/png

