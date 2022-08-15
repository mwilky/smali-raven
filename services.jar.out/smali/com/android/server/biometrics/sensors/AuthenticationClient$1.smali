.class public Lcom/android/server/biometrics/sensors/AuthenticationClient$1;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

.field public final synthetic val$byteToken:[B

.field public final synthetic val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field public final synthetic val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;[BLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLifecycleAfterAuth()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    return-void
.end method

.method public sendAuthenticationCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$msendCancelOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public sendAuthenticationResult(Z)V
    .locals 7

    const-string v0, "Biometrics/AuthenticationClient"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    invoke-virtual {p1, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAuthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Skipping addAuthToken"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsRestricted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Unable to notify listener"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string p0, "Client not listening"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendHapticFeedback()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateSuccess()V

    :cond_0
    return-void
.end method
