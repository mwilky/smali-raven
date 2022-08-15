.class public Lcom/android/server/biometrics/log/BiometricContextProvider;
.super Ljava/lang/Object;
.source "BiometricContextProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/log/BiometricContext;


# static fields
.field public static sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;


# instance fields
.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public mIsDozing:Z

.field public final mSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_2MYC_po3MuhMoWo9cfk_J8sJdM(Lcom/android/server/biometrics/log/BiometricContextProvider;Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/log/BiometricContextProvider;->lambda$notifySubscribers$0(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDozing(Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySubscribers(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->notifySubscribers()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    :try_start_0
    new-instance p1, Lcom/android/server/biometrics/log/BiometricContextProvider$1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;Landroid/os/Handler;)V

    invoke-interface {p2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    const/4 p1, 0x3

    new-instance p3, Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-interface {p2, p1, p3}, Lcom/android/internal/statusbar/IStatusBarService;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BiometricContextProvider"

    const-string p2, "Unable to register biometric context listener"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static defaultProvider(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;
    .locals 4

    const-class v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    new-instance v2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v2, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/biometrics/log/BiometricContextProvider;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find required service"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private synthetic lambda$notifySubscribers$0(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAod()Z

    move-result p0

    iput-boolean p0, p1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBiometricPromptSessionId()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/InstanceId;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getKeyguardEntrySessionId()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/InstanceId;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isAod()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifySubscribers()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final setFirstSessionId(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getKeyguardEntrySessionId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    const/4 p0, 0x2

    iput-byte p0, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getBiometricPromptSessionId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    const/4 p0, 0x1

    iput-byte p0, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    :cond_1
    const/4 p0, 0x0

    iput p0, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iput-byte p0, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void
.end method

.method public subscribe(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/common/OperationContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unsubscribe(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateContext(Landroid/hardware/biometrics/common/OperationContext;Z)Landroid/hardware/biometrics/common/OperationContext;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAod()Z

    move-result v0

    iput-boolean v0, p1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    iput-boolean p2, p1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->setFirstSessionId(Landroid/hardware/biometrics/common/OperationContext;)V

    return-object p1
.end method
