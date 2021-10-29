.class public Lcom/google/android/systemui/input/TouchContextService;
.super Ljava/lang/Object;
.source "TouchContextService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static final INTERFACE:Ljava/lang/String;


# instance fields
.field private final mDm:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLastRotation:I

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/google/input/ITouchContextService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BAcueLTKOY3lMJUgNW7WBnxCOmU(Lcom/google/android/systemui/input/TouchContextService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/input/TouchContextService;->lambda$getTouchContextService$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jcWr-xhBp2AG0yuMdnfBCze5n18(Lcom/google/android/systemui/input/TouchContextService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/input/TouchContextService;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/input/ITouchContextService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/input/TouchContextService;->INTERFACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mLastRotation:I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mHandler:Landroid/os/Handler;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mDm:Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/google/android/systemui/input/TouchContextService;->INTERFACE:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "TouchContextService"

    const-string p1, "No ITouchContextService declared in manifest, not sending input context"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance p1, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/input/TouchContextService;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getTouchContextService()Lcom/google/input/ITouchContextService;
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/systemui/input/TouchContextService;->INTERFACE:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TouchContextService"

    if-nez v0, :cond_1

    const-string p0, "Failed to get ITouchContextService despite being declared."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    new-instance v3, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/input/TouchContextService;Landroid/os/IBinder;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lcom/google/input/ITouchContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/input/ITouchContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "Failed to link to death on ITouchContextService. Binder is probably dead."

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private synthetic lambda$getTouchContextService$1(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/input/TouchContextService;->onBinderDied(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/input/TouchContextService;->onDisplayChanged(I)V

    return-void
.end method

.method private onBinderDied(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static toOrientation(III)B
    .locals 0

    int-to-byte p0, p0

    if-le p1, p2, :cond_0

    add-int/lit8 p0, p0, 0x1

    rem-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    :cond_0
    return p0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mLastRotation:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    new-instance v1, Lcom/google/input/ContextPacket;

    invoke-direct {v1}, Lcom/google/input/ContextPacket;-><init>()V

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/google/android/systemui/input/TouchContextService;->toOrientation(III)B

    move-result p1

    iput-byte p1, v1, Lcom/google/input/ContextPacket;->orientation:B

    invoke-direct {p0}, Lcom/google/android/systemui/input/TouchContextService;->getTouchContextService()Lcom/google/input/ITouchContextService;

    move-result-object p1

    const-string v2, "TouchContextService"

    if-nez p1, :cond_3

    const-string p0, "Failed to get touch context service, dropping context packet."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    invoke-interface {p1, v1}, Lcom/google/input/ITouchContextService;->updateContext(Lcom/google/input/ContextPacket;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mLastRotation:I

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to send input context packet."

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
