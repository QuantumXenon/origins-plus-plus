package quantumxenon.origins_plus_plus.mixin;

import net.minecraft.network.protocol.game.ClientboundCustomPayloadPacket;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.Constant;
import org.spongepowered.asm.mixin.injection.ModifyConstant;

@Mixin(ClientboundCustomPayloadPacket.class)
public class ClientboundCustomPayloadPacketMixin {
    @ModifyConstant(method = "<init>*", constant = @Constant(intValue = 1048576))
    private int xlPackets(int constant) {
        return 2000000000;
    }
}
