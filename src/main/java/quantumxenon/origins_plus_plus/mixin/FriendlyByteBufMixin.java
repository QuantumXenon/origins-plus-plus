package quantumxenon.origins_plus_plus.mixin;

import net.minecraft.network.FriendlyByteBuf;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.Constant;
import org.spongepowered.asm.mixin.injection.ModifyConstant;

@Mixin(FriendlyByteBuf.class)
public class FriendlyByteBufMixin {
    @ModifyConstant(method = "readNbt*", constant = @Constant(longValue = 2097152L))
    private long xlPackets(long constant) {
        return 2_000_000_000L;
    }
}
