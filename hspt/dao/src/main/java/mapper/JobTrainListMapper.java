package mapper;

import java.util.List;

import job.JobTrain;
import job.JobTrainInfoLike;
import user.ZPosition;
import wz.WzApply;

public interface JobTrainListMapper {
	public void setJobTrain (JobTrain jobTrain);
	public List<ZPosition> getZu();
	public List<JobTrain> getJobTrainInfo(int zId);
	public void delJobTrainInfo(int id);
	public List<JobTrainInfoLike> getJobTrainInfoLike(String searchName);
	public void updateJobTrainInfo(JobTrain jobTrain);
	public List<JobTrain> getJobTrainLike(String searchName);
}
