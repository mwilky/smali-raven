.class public Lcom/android/server/biometrics/sensors/CoexCoordinator;
.super Ljava/lang/Object;
.source "CoexCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;,
        Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;,
        Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;
    }
.end annotation


# static fields
.field public static sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;


# instance fields
.field public mAdvancedLogicEnabled:Z

.field public final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;>;"
        }
    .end annotation
.end field

.field public mFaceHapticDisabledWhenNonBypass:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mSuccessfulAuths:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    :cond_0
    sget-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    return-object v0
.end method

.method public static isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isUdfpsAuthAttempted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public addAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAuthenticationClient("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricCoexCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overwriting existing client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with new client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final hasMultipleSuccessfulAuthentications()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    return v2

    :cond_2
    return v0
.end method

.method public final isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFaceScanning()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eq v0, p1, :cond_1

    return v1

    :cond_2
    return v2
.end method

.method public final isUnknownClient(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;I",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasUserDetected()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthAttempted()Z

    move-result v4

    const/4 v5, 0x3

    if-eq p2, v5, :cond_1

    const/4 v5, 0x7

    if-eq p2, v5, :cond_1

    const/16 v5, 0x9

    if-eq p2, v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v3

    :goto_2
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    move v3, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    if-nez v3, :cond_7

    invoke-interface {p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;->sendHapticFeedback()V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "no haptic shouldUsuallyVibrate: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hapticSuppressedByCoex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricCoexCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public onAuthenticationRejected(JLcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;I",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_8

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_0

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v2

    const-string v4, "BiometricCoexCoordinator"

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Face rejected in multi-sensor auth, udfps: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_1

    :cond_1
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsAuthAttempted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_1

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Skipping face reject haptic"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    :goto_0
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->popSuccessfulFaceAuthIfExists(J)Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Using recent auth: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {p0, v3}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isFaceScanning()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UDFPS rejected in multi-sensor auth, face: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_1

    :cond_6
    const-string p0, "UDFPS rejected in multi-sensor auth, face not scanning"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown client rejected: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_1

    :cond_8
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    :cond_9
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_1

    :cond_a
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    :goto_1
    if-nez p4, :cond_b

    const/4 p0, 0x0

    invoke-interface {p5, p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    :cond_b
    return-void
.end method

.method public onAuthenticationSucceeded(JLcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->hasMultipleSuccessfulAuthentications()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    :goto_0
    const/4 p0, 0x0

    invoke-interface {p4, p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUnknownClient(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_9

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_3

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    move-object v3, v1

    move-object v5, v0

    move-wide v6, p1

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;-><init>(Landroid/os/Handler;Ljava/util/LinkedList;JILcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "BiometricCoexCoordinator"

    const-string p1, "Skipping face success haptic"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    :goto_1
    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isFaceScanning()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->removeAndFinishAllFaceFromQueue()V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_2

    :cond_8
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_2

    :cond_9
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    :goto_2
    return-void
.end method

.method public final popSuccessfulFaceAuthIfExists(J)Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    iget-wide v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mAuthTimestamp:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing stale auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricCoexCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeAndFinishAllFaceFromQueue()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    iget v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing from queue, canceling, and finishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricCoexCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationCanceled()V

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeAuthenticationClient("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricCoexCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sensorType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist in map. Client: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reset()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setAdvancedLogicEnabled(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    return-void
.end method

.method public setFaceHapticDisabledWhenNonBypass(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Face Haptic Disabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    const-string v2, ", Auth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
