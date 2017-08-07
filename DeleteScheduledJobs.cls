// A CronTrigger represents an instance of a scheduled job that you would find
// in Setup -> Monitoring -> Scheduled Jobs.
//
// A CronJobDetail contains the name and type, and is referenced by the
// CronTrigger. You can filter what type of jobs to delete by looking at the
// JobType of the CronJobDetail.
//
// Passing the CronTrigger Id to System.abortJob() cancels the job. There may be
// a limit to how many times you can do this in a single context. Needs
// experimentation.

public class DeleteScheduledJobs {

    public void deleteAll() {
        for (CronTrigger ct : [SELECT Id FROM CronTrigger]) {
            System.abortJob(ct.Id);
        }
    }
}
