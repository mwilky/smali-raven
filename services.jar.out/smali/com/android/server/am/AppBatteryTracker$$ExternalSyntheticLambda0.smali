.class public final synthetic Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {p0}, Lcom/android/server/am/AppBatteryTracker;->$r8$lambda$0oY16ipVWMUn5C5jVk9cJIFvkPo(Ljava/util/concurrent/CountDownLatch;)Z

    move-result p0

    return p0
.end method
