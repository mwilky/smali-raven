.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;
.super Ljava/lang/Object;
.source "UnfoldLightRevealOverlayAnimation.kt"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getContext$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getCurrentRotation$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {v0, p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$setCurrentRotation$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;I)V

    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getScrimView$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Lcom/android/systemui/statusbar/LightRevealScrim;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$createLightRevealEffect(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Lcom/android/systemui/statusbar/LightRevealEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getRoot$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/view/SurfaceControlViewHost;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$DisplayChangeListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {p0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getLayoutParams(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
