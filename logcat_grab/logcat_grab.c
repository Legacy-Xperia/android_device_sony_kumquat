#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>

#include <stdarg.h>
#include <fcntl.h>

#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "defines.h"

int main() {
	static int count = 0;
	DIR *d;
	static const char check_dir[] = "/data/local/tmp";

	/* wait 2 minutes */
	while(count != 120) {
		count += 1;
		sleep(1);
		d = opendir(check_dir);
		if (d != 0)
			__system("/system/bin/logcat -r 1000 -v long -f /data/local/tmp/logcat.log");
		
	}

	return 0;
}
