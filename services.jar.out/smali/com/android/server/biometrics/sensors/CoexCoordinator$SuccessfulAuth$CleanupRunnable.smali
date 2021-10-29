.class public Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;
.super Ljava/lang/Object;
.source "CoexCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanupRunnable"
.end annotation


# instance fields
.field final mAuth:Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

.field final mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

.field final mSuccessfulAuths:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;",
            ">;",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;->mSuccessfulAuths:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;->mAuth:Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;->mSuccessfulAuths:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;->mAuth:Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing stale successfulAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;->mAuth:Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricCoexCoordinator"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    return-void
.end method
