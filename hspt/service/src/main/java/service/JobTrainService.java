package service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import job.JobTrain;
import user.ZPosition;
import util.ImageResponse;
import util.PageResponse;

public interface JobTrainService {
	public void setJobTrain(JobTrain jobTrain);
	public List<ZPosition> getZu();
	public PageResponse getJobTrainInfo(int page, int limit,int zId);
	public void delJobTrainInfo(int id);
	public PageResponse getJobTrainInfoLike(int page, int limit,String searchName);
	public void updateJobTrainInfo(JobTrain jobTrain);
	public PageResponse getJobTrainLike(int page, int limit,String searchName);
	public ImageResponse upload(MultipartFile file);
}
