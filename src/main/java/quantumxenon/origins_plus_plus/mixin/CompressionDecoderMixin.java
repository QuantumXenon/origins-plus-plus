package quantumxenon.origins_plus_plus.mixin;

import net.minecraft.network.CompressionDecoder;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.Constant;
import org.spongepowered.asm.mixin.injection.ModifyConstant;

@Mixin(CompressionDecoder.class)
public class CompressionDecoderMixin {
    @ModifyConstant(method = "decode", constant = @Constant(intValue = 2097152))
    private int xlPackets(int old) {
        return 2000000000;
    }
}