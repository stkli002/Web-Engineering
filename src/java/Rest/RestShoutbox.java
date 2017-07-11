package Rest;

import Model.ShoutBoxMsg;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Date;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author ExaShox
 */
@Path("/shoutbox")
public class RestShoutbox {

    private final ArrayList<ShoutBoxMsg> messageList = new ArrayList<>();

    public RestShoutbox() {
        ShoutBoxMsg msg = new ShoutBoxMsg();
        msg.setName("test");
        msg.setDate(new Date());
        msg.setMsg("test test");

        messageList.add(msg);
    }

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public String getList() {
        String json = new Gson().toJson(messageList);
        return json;
    }

//    @PUT
//    @Consumes("application/json")
//    public Response addData(ShoutBoxMsg shoutBox) {
//        if (shoutBox.getName() != null
//                && shoutBox.getDate() != null
//                && shoutBox.getMsg() != null) {
//            messageList.add(shoutBox);
//
//            return Response.status(Response.Status.OK).build();
//        } else {
//            return Response.status(Response.Status.BAD_REQUEST).build();
//        }
//    }
    @PUT
    @Consumes("application/json")
    public void addNachricht(@QueryParam("name") String name, @QueryParam("msg") String msg, @QueryParam("date") Date date) {
        ShoutBoxMsg msgBox = new ShoutBoxMsg();
        msgBox.setName(name);
        msgBox.setDate(date);
        msgBox.setMsg(msg);
        messageList.add(msgBox);
    }
}
