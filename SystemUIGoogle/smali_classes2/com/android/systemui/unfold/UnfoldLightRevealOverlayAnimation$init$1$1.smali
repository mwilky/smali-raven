.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;
.super Ljava/lang/Object;
.source "UnfoldLightRevealOverlayAnimation.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->accept(Landroid/view/SurfaceControl$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $builder:Landroid/view/SurfaceControl$Builder;

.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->$builder:Landroid/view/SurfaceControl$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->$builder:Landroid/view/SurfaceControl$Builder;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$setOverlayContainer$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;Landroid/view/SurfaceControl;)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {v1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getOverlayContainer$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "overlayContainer"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const v4, 0x7fffffff

    invoke-virtual {v0, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {v1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getOverlayContainer$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    new-instance v1, Landroid/view/WindowlessWindowManager;

    iget-object v4, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {v4}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getContext$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-static {p0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$getOverlayContainer$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-direct {v1, v4, p0, v3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->access$setWwm$p(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;Landroid/view/WindowlessWindowManager;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
