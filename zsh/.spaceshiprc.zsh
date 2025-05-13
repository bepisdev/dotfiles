# Display username always
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_SUDO_SHOW=true

# User@Host in prompt
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_SUFFIX=""
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_SHOW_FULL=true
SPACESHIP_HOST_PREFIX="@"

# Directory
spaceship remove dir
spaceship add dir --after host
SPACESHIP_DIR_PREFIX="["
SPACESHIP_DIR_SUFFIX="] "

# Display count of background jobs
spaceship add jobs
SPACESHIP_JOBS_AMOUNT_THRESHOLD=0
