package quantumxenon.origins_plus_plus;

import net.minecraft.network.chat.Component;
import net.minecraftforge.event.entity.player.PlayerEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.versions.forge.ForgeVersion;

@Mod.EventBusSubscriber(modid = "origins_plus_plus")
public class LoginMessage {
    @SubscribeEvent
    public static void onPlayerLogin(PlayerEvent.PlayerLoggedInEvent event) {
        if (Integer.parseInt(ForgeVersion.getVersion().split("\\.")[0]) < 43) {
            event.getEntity().sendSystemMessage(Component.translatable("origins-plus-plus.brokenKeybindsMessage"));
        }
    }
}