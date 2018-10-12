package model;

import java.io.Serializable;

public class CDRModel implements Serializable
{

    private final String called_num;
    private final String called_tower;
    private final String recipient_num;
    private final String recipient_tower;
    private final String datetime;
    private final String duration;


    public CDRModel
            (String called_num,
             String called_tower,
             String recipient_num,
             String recipient_tower,
             String datetime,
             String duration)
    {
        this.called_num = called_num;
        this.called_tower = called_tower;
        this.recipient_num = recipient_num;
        this.recipient_tower = recipient_tower;
        this.datetime = datetime;
        this.duration = duration;
    }

    public String getCalled_num() {
        return called_num;
    }

    public String getCalled_tower() {
        return called_tower;
    }

    public String getRecipient_num() {
        return recipient_num;
    }

    public String getRecipient_tower() {
        return recipient_tower;
    }

    public String getDatetime() {
        return datetime;
    }

    public String getDuration() {
        return duration;
    }

    public String getJSONString()
    {
        return called_num+","+called_tower+","+recipient_num+","+recipient_tower+","+datetime+","+duration;
    }
}
