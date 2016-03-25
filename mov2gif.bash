mov2gif_func() {
  SCALE=1024
  if (( $# < 2 ))
  then
    echo "Usage: ogv2gif <input_video_file> <output_gif_file> [scale=1024]"
    echo "Example: ogv2gif out.ogv out.gif 1280"
    return 1
  fi

  if [ -n "$3" ]
  then
    SCALE=$3
  fi

  echo "Generating gif pallete accorting to '$1'..."
  ffmpeg -loglevel panic -y -ss 30 -i $1 -vf fps=10,scale=320:-1:flags=lanczos,palettegen /tmp/.ogv2gif.palette.png &&
  echo "Write output gif to '$2' with scale ${SCALE}... "
  ffmpeg -loglevel panic -y -i $1 -i /tmp/.ogv2gif.palette.png -filter_complex "fps=10,scale=$SCALE:-1:flags=lanczos[x];[x][1:v]paletteuse" $2 
}
alias mov2gif=mov2gif_func
