package Rest;

import java.util.HashSet;
import java.util.Set;
import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

/**
 *
 * @author ExaShox
 */
@ApplicationPath("rest")
public class RestApplication extends Application {

    private final Set<Object> singletons = new HashSet<>();

    public RestApplication() {
        singletons.add(new RestShoutbox());
    }

    @Override
    public Set<Class<?>> getClasses() {
        return new HashSet<>();
    }

    @Override
    public Set<Object> getSingletons() {
        return singletons;
    }
}
