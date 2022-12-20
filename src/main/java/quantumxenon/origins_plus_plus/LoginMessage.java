package quantumxenon.origins_plus_plus;

import net.minecraft.network.chat.TranslatableComponent;
import net.minecraftforge.event.entity.player.PlayerEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.versions.forge.ForgeVersion;

import java.util.UUID;

@Mod.EventBusSubscriber(modid = "origins_plus_plus")
public class LoginMessage {
    @SubscribeEvent
    public static void onPlayerLoggedIn(PlayerEvent.PlayerLoggedInEvent event) {
        if (Integer.parseInt(ForgeVersion.getVersion().split("\\.")[0]) == 40) {
            event.getEntity().sendMessage(new TranslatableComponent("origins-plus-plus.brokenKeybindsMessage"), UUID.randomUUID());
        }
    }
}