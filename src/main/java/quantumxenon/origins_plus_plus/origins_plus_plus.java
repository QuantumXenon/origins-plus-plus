package quantumxenon.origins_plus_plus;

import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.fml.common.Mod;

@Mod("origins_plus_plus")
public class origins_plus_plus {
    public origins_plus_plus() {
        MinecraftForge.EVENT_BUS.register(LoginMessage.class);
    }
}