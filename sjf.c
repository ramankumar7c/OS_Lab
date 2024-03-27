#include<stdio.h>

struct Process{
	int pid;
	int at;
	int bt;
	int ct;
	int tat;
	int wt;
};

void sjf(struct Process processes[],int n){
	int i,j;
	for(i=0;i<n-1;i++){
		for(j=0;j<n-i-1;j++){
			if(processes[j].at>processes[j+1].at){
				struct Process temp = processes[j];
				processes[j]=processes[j+1];
				processes[j+1]=temp;
			}
		}
	}
	
	int current_time=0;
	float total_tat=0;
	float total_wt=0;
	for(i=0;i<n;i++){
		if(current_time<processes[i].at){
			current_time=processes[i].at;
		}
		processes[i].ct = current_time + processes[i].bt;
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
	int i,n;
	printf("Enter no of processes : ");
	scanf("%d",&n);
	
	struct Process processes[n];
	
	for(i=0;i<n;i++){
		processes[i].pid=i+1;
		printf("Enter Arrival Time for Process %d : ",i+1);
		scanf("%d",&processes[i].at);
		printf("Enter Burst Time for Process %d : ",i+1);
		scanf("%d",&processes[i].bt);
	}
	
	sjf(processes,n);
		
	return 0;
}
