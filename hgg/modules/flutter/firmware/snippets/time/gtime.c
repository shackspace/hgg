/** 
 * Copyright (c) 2012, Hackerspace Global Grid
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *   * Neither the name of the Hackerspace Global Grid (HGG) nor the
 *     names of its contributors may be used to endorse or promote products
 *     derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE Hackerspace Global Grid BE LIABLE 
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#include <stdio.h>

#define DAYS_PER_YEAR 	365
#define SECONDS_PER_DAY 60*60*24
#define SECONDS_PER_HOUR 60*60
#define SECONDS_PER_MINUTE 60
#define LEAPYEAR(x) ((x % 4 == 0) && ((x % 100 != 0) || (x % 400 == 0)))

const int monthDays[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };


/** 
 * simple unix timestamp generation for UTC. Does not care about leap seconds
 * @param year must be > 1970
 * @param month January is 0, December is 11
 * @param hour 0..23
 * @param minute 0..59
 * @param second 0..59
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

