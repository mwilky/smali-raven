.class public abstract Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "InternalCleanupClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;
.implements Lcom/android/server/biometrics/sensors/RemovalConsumer;
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/EnumerateConsumer;",
        "Lcom/android/server/biometrics/sensors/RemovalConsumer;",
        "Lcom/android/server/biometrics/sensors/EnrollmentModifier;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/InternalCleanupClient"


# instance fields
.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;"
        }
    .end annotation
.end field

.field private mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field private final mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final mEnumerateCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

.field private final mHasEnrollmentsBeforeStarting:Z

.field private final mRemoveCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

.field private final mUnknownHALTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;IILjava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "TS;>;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    new-instance v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iput-object v13, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    move-object/from16 v0, p9

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    move-object/from16 v1, p7

    iput-object v1, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnrolledList:Ljava/util/List;

    move-object v2, p1

    move/from16 v3, p3

    invoke-interface {v13, p1, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->startCleanupUnknownHalTemplates()V

    return-void
.end method

.method private startCleanupUnknownHalTemplates()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCleanupUnknownHalTemplates, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v6

    iget v7, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getSensorId()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getRemovalClient(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mStatsModality:I

    const/16 v2, 0x94

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-static {v2, v1, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method


# virtual methods
.method protected abstract getEnumerateClient(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;I)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TS;>;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;I)",
            "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getProtoEnum()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected abstract getRemovalClient(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/server/biometrics/sensors/RemovalClient<",
            "TS;TT;>;"
        }
    .end annotation
.end method

.method public hasEnrollmentStateChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEnrollments()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    const-string v1, "Biometrics/InternalCleanupClient"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerationResult received during client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerated, remaining: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalClient;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast v0, Lcom/android/server/biometrics/sensors/RemovalClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/RemovalClient;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnrolledList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getSensorId()I

    move-result v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getEnumerateClient(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;I)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting enumerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method protected startHalOperation()V
    .locals 0

    return-void
.end method

.method public unableToStart()V
    .locals 0

    return-void
.end method
