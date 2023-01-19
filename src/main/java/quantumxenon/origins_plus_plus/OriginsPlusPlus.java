package quantumxenon.origins_plus_plus;

import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.fml.common.Mod;

@Mod("origins_plus_plus")
public class OriginsPlusPlus {
    public OriginsPlusPlus() {
        MinecraftForge.EVENT_BUS.register(LoginMessage.class);
    }
}