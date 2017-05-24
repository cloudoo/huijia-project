package domain;

import java.io.Serializable;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class FitnessInfo implements Serializable {

    private Long id;
    private Long traineeId; //会员id
    private String career;//职业类型
    private String postInfo;//职务信息
    private String history;//病史

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTraineeId() {
        return traineeId;
    }

    public void setTraineeId(Long traineeId) {
        this.traineeId = traineeId;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    public String getPostInfo() {
        return postInfo;
    }

    public void setPostInfo(String postInfo) {
        this.postInfo = postInfo;
    }

    public String getHistory() {
        return history;
    }

    public void setHistory(String history) {
        this.history = history;
    }
}
