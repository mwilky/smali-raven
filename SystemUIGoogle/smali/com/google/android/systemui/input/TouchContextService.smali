.class public final Lcom/google/android/systemui/input/TouchContextService;
.super Ljava/lang/Object;
.source "TouchContextService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field public static final INTERFACE:Ljava/lang/String;


# instance fields
.field public final mDm:Landroid/hardware/display/DisplayManager;

.field public mLastRotation:I

.field public final mLock:Ljava/lang/Object;

.field public mService:Lcom/google/input/ITouchContextService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/input/ITouchContextService;->DESCRIPTOR:Ljava/lang/String;

    const-string v2, "/default"

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    new-instance p1, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda1;

    const/16 v1, 0x8

    invoke-direct {p1, v1, p0}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 6

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

    int-to-byte v3, v0

    if-le v2, p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    :cond_3
    iput-byte v3, v1, Lcom/google/input/ContextPacket;->orientation:B

    iget-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    const-string v2, "TouchContextService"

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/google/android/systemui/input/TouchContextService;->INTERFACE:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    const-string p1, "Failed to get ITouchContextService despite being declared."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p1, v3

    goto :goto_2

    :cond_5
    :try_start_0
    new-instance v4, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/input/TouchContextService;Landroid/os/IBinder;)V

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sget v3, Lcom/google/input/ITouchContextService$Stub;->$r8$clinit:I

    sget-object v3, Lcom/google/input/ITouchContextService;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v4, v3, Lcom/google/input/ITouchContextService;

    if-eqz v4, :cond_6

    check-cast v3, Lcom/google/input/ITouchContextService;

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/google/input/ITouchContextService$Stub$Proxy;

    invoke-direct {v3, p1}, Lcom/google/input/ITouchContextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    move-object p1, v3

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mService:Lcom/google/input/ITouchContextService;

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v4, "Failed to link to death on ITouchContextService. Binder is probably dead."

    invoke-static {v2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_2
    if-nez p1, :cond_7

    const-string p0, "Failed to get touch context service, dropping context packet."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :try_start_1
    invoke-interface {p1, v1}, Lcom/google/input/ITouchContextService;->updateContext(Lcom/google/input/ContextPacket;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    iput v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mLastRotation:I

    return-void

    :catch_1
    move-exception p0

    const-string p1, "Failed to send input context packet."

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
