.class public final synthetic Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/input/TouchContextService;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/input/TouchContextService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/input/TouchContextService;

    iput-object p2, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/google/android/systemui/input/TouchContextService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
