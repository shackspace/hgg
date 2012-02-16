
#include <stdio.h>

#define DAYS_PER_YEAR 	365
#define SECONDS_PER_DAY 60*60*24
#define SECONDS_PER_HOUR 60*60
#define SECONDS_PER_MINUTE 60
#define LEAPYEAR(x) ((x % 4 == 0) && ((x % 100 != 0) || (x % 400 == 0)))

const int monthDays[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };


/** 
 * simple epoch timestamp generation 
 */
int makeTs(int year, int month, int day, int hour, int minute, int second) {
	int result = 0;
	int y, m;

	// 
	// phase 1: calculate timestamp in days
	// years since 1970, don't include current year.
	for(y=1970;y<year;y++) {
		result += DAYS_PER_YEAR;
		if(LEAPYEAR(y)) {
			result++;
		}
	}

	// 
	// add month since january, don't include current month.
	for(m=0;m<month;m++) {
		result += monthDays[m];
	}
	
	// if current year is a leapyear and february is over, add 1 day
	if(LEAPYEAR(year) && month >= 2) {
		result++;
	}

	// 
	// add day of month.
	result += (day-1);

	// 
	// phase 2: calculate timestamp to seconds.
	result *= SECONDS_PER_DAY;

	// 
	// add the hours.
	result += hour*SECONDS_PER_HOUR;

	// 
	// add the minutes
	result += minute*SECONDS_PER_MINUTE;

	// 
	// add the seconds
	result += second;


	return result;
}



int main(int argc, char** argv) {
	if(argc != 7) {
		printf("Usage: %s <year> <month> <day> <hour> <minute> <second>\n", argv[0]);
		return 0;
	}

	int year = atoi(argv[1]);
	int month = atoi(argv[2]);
	int day = atoi(argv[3]);
	int hour = atoi(argv[4]);
	int minute = atoi(argv[5]);
	int second = atoi(argv[6]);

	printf("%d/%d/%d - %d:%d.%d is %d\n", year, month, day, hour, minute, second, makeTs(year, month, day, hour, minute, second));
	return 0;
}

