.class public final synthetic Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14$$ExternalSyntheticLambda0;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

    iput-object p2, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14$$ExternalSyntheticLambda0;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;->mLastFrameTime:J

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
