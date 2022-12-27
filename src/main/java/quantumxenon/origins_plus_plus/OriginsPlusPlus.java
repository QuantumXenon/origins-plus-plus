package quantumxenon.origins_plus_plus;

import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.versions.forge.ForgeVersion;

@Mod("origins_plus_plus")
public class OriginsPlusPlus {
    public OriginsPlusPlus() {
        if (Integer.parseInt(ForgeVersion.getVersion().split("\\.")[0]) == 40) {
            MinecraftForge.EVENT_BUS.register(LoginMessage.class);
        }
    }
}