.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$FoldListener;
.super Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
.source "UnfoldLightRevealOverlayAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FoldListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$FoldListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getContext$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$FoldListener$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$FoldListener$1;-><init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)V

    invoke-direct {p0, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method
