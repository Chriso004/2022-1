#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>

#define CHILD_PROCESS_COUNT 4 // 최대 자식 프로세스 수 정의

int get_random(); // 함수 선언

enum CommandList /* 명령어 실행을 위한 열거형 */
{
    PS = 0,
    LS,
    DF,
    CAL
}cl;

int get_random() /* 랜덤한 sleep시간을 생성하는 함수 */
{
    int random;
    
    srand(time(NULL));
    random = (rand() % 15) + 5;

    return random;
}

int main()
{
    /* 
        pid 배열을 선언해 자식 프로세스 저장
        pid_array 배열을 선언해 자식 프로세스의 pid 저장
    */
    pid_t pid[CHILD_PROCESS_COUNT]; 
    int pid_array[CHILD_PROCESS_COUNT];
    
    int i = 0;
    int sleep_time;

    for (i = 0; i < CHILD_PROCESS_COUNT; i++)
    {
        pid[i] = fork();

        if(pid[i] < 0)
        {
            perror("Fork Failed");
            return 1;
        }

        /* 
            자식 프로세스임이 확인 된 경우 pid를 배열에 저장
            이후 5 ~ 20초 사이의 sleep을 진행,
            이후 자식 프로세스의 순서에 따라 명령어 실행
        */

        else if(pid[i] == 0)
        {
            sleep_time = get_random();
            pid_array[i] = getpid();
            
            printf("Child forked, Sleeping for %d second...\n", sleep_time);
            sleep(sleep_time);
            if(i == PS)
                execlp("/bin/ps", "ps", NULL);
            else if(i == LS)
                execlp("/bin/ls", "ls", NULL);
            else if(i == DF)
                execlp("/bin/df", "df", NULL);
            else if(i == CAL)
                execlp("cal", "cal", NULL);
        }

        /* 
            자식 프로세스 종료 이후
            pid_array에 저장된 pid 출력
        */
        else
        {
            wait(NULL);
            printf("Child Complete pid: %d\n\n", pid_array[i]);
        }
    }

    return 0;
}
