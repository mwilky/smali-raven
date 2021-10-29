.class Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;
.super Ljava/lang/Object;
.source "PipMotionHelper.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/phone/PipMotionHelper;->lambda$new$0()Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field final synthetic val$initialLooper:Landroid/os/Looper;


# direct methods
.method public static synthetic $r8$lambda$9h30rJIxGpb_KPp7bOddUvFoLZk(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;->lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;->val$initialLooper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public isCurrentThread()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;->val$initialLooper:Landroid/os/Looper;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public postFrameCallback(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
