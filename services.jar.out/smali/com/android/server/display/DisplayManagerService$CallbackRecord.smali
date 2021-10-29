.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field private mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private shouldSendEvent(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown display event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_0
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_0

    move v2, v5

    :cond_0
    return v2

    :pswitch_1
    const-wide/16 v6, 0x2

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_1

    move v2, v5

    :cond_1
    return v2

    :pswitch_2
    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    return v2

    :pswitch_3
    const-wide/16 v6, 0x1

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    move v2, v5

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->access$2700(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method public notifyDisplayEventAsync(II)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldSendEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that displays changed, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_0
    return-void
.end method

.method public updateEventsMask(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
