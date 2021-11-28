#include <unistd.h>
#include <ncurses.h>

const char *hint = "gur qrpelcgvba xrl sbe gur r-znvyf vf n qngr. vs lbh pna ernq guvf, vg orybatf gb lbh, gur qngr. V ybir lbh P";

#define BUFF_SIZE 11

int main(int argc, char **argv) {
   int cursor = 0;
   char day[2];
   char month[2];
   char year[4];
   char buffer[BUFF_SIZE];
   if (argc != 2) return 1;
   initscr();
   timeout(-1);
   noecho();
   mvprintw(0, 0, "**/**/****");
   move(0, cursor);
   day[0] = getch();
   mvprintw(0, cursor, "%c", day[0]);
   move(0, ++cursor);
   day[1] = getch();
   mvprintw(0, cursor++, "%c", day[1]);
   move(0, ++cursor);
   month[0] = getch();
   mvprintw(0, cursor, "%c", month[0]);
   move(0, ++cursor);
   month[1] = getch();
   mvprintw(0, cursor++, "%c", month[1]);
   move(0, ++cursor);
   year[0] = getch();
   mvprintw(0, cursor, "%c", year[0]);
   move(0, ++cursor);
   year[1] = getch();
   mvprintw(0, cursor, "%c", year[1]);
   move(0, ++cursor);
   year[2] = getch();
   mvprintw(0, cursor, "%c", year[2]);
   year[3] = getch();
   endwin();
   snprintf(buffer, BUFF_SIZE, "%c%c/%c%c/%c%c%c%c", day[0], day[1], month[0], month[1], year[0], year[1], year[2], year[3]);
   execlp("gpg", "gpg", "-d", "--no-symkey-cache", "--batch", "--passphrase", buffer, argv[1], NULL);
   return 1;
}
