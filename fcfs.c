#include<stdio.h>

struct Process{
	int pid;
	int at;
	int bt;
	int ct;
	int tat;
	int wt;
};

void fcfs(struct Process processes[],int n){
	int i,current_time=0;
	float total_tat=0;
	float total_wt=0;
	for(i=0;i<n;i++){
		if(current_time<processes[i].at)
			current_time=processes[i].at;
	
		processes[i].ct=current_time+processes[i].bt;
		processes[i].tat=processes[i].ct-processes[i].at;
		processes[i].wt=processes[i].tat-processes[i].bt;
	
		total_tat+=processes[i].tat;
		total_wt+=processes[i].wt;
		current_time=processes[i].ct;
	}
	printf("Process\tArrival Time\tBurst Time\tCompletion Time\tTurnaround Time\tWaiting Time\n");
    for (i = 0; i < n; i++) {
    	printf("%d\t%d\t\t%d\t\t%d\t\t%d\t\t%d\n", processes[i].pid, processes[i].at, 		
    	processes[i].bt,processes[i].ct, processes[i].tat,processes[i].wt);
	}
	printf("\nAverage TAT = %.2f",total_tat/n);
	printf("\nAverage WT = %.2f\n",total_wt/n);
}

int main(){
	int n,i;
	printf("Enter no of processes : ");
	scanf("%d",&n);
	
	struct Process processes[n];
	
	for(i=0;i<n;i++){
		processes[i].pid=i+1;
		
		printf("Enter arrival time of process %d : ",i+1);
		scanf("%d",&processes[i].at);
		
		printf("Enter burst time of process %d : ",i+1);
		scanf("%d",&processes[i].bt);
	}
	
	fcfs(processes,n);
	
	return 0;
}
