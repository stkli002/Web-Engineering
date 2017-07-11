package Model;

import java.util.Date;

/**
 *
 * @author ExaShox
 */
public class ShoutBoxMsg {

    private String name, msg;
    private Date date;

    public ShoutBoxMsg() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
