char const*const RED_LED_FILE = "/sys/class/leds/pwr-red/brightness";
char const*const GREEN_LED_FILE = "/sys/class/leds/pwr-green/brightness";
char const*const BLUE_LED_FILE = "/sys/class/leds/pwr-blue/brightness";

char const*const RED2_LED_FILE[] = {
 "/sys/class/leds/l-key-red/brightness",
 "/sys/class/leds/m-key-red/brightness",
 "/sys/class/leds/r-key-red/brightness",
};
char const*const GREEN2_LED_FILE[]= {
 "/sys/class/leds/l-key-green/brightness",
 "/sys/class/leds/m-key-green/brightness",
 "/sys/class/leds/r-key-green/brightness",
};
char const*const BLUE2_LED_FILE[] = {
 "/sys/class/leds/l-key-blue/brightness",
 "/sys/class/leds/m-key-blue/brightness",
 "/sys/class/leds/r-key-blue/brightness",
};

char const*const LED_FILE_TRIGGER[] = {
 "/sys/class/leds/l-key-red/use_pattern",
 "/sys/class/leds/m-key-red/use_pattern",
 "/sys/class/leds/r-key-red/use_pattern",
 "/sys/class/leds/pwr-red/use_pattern",
 "/sys/class/leds/l-key-green/use_pattern",
 "/sys/class/leds/m-key-green/use_pattern",
 "/sys/class/leds/r-key-green/use_pattern",
 "/sys/class/leds/pwr-green/use_pattern",
 "/sys/class/leds/l-key-blue/use_pattern",
 "/sys/class/leds/m-key-blue/use_pattern",
 "/sys/class/leds/r-key-blue/use_pattern",
 "/sys/class/leds/pwr-blue/use_pattern",
};

char const*const BUTTON_BACKLIGHT_FILE[] = {
};

char const*const LED_FILE_PATTERN = "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040/pattern_data";
char const*const LED_FILE_DELAYON = "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040/pattern_delay";
char const*const LED_FILE_DELAYOFF = "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040/pattern_duration_secs";
char const*const LED_FILE_DIMTIME = "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040/pattern_use_softdim";
char const*const LED_FILE_DIMONOFF = "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040/dim_time";

char const*const ON = "1";
char const*const OFF = "0";
