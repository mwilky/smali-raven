.class public Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;
.super Ljava/lang/Object;
.source "WorkSourceUidPreservingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mUid:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mUid:I

    invoke-static {v0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingWorkSource(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingWorkSource(J)V

    throw v2
.end method
