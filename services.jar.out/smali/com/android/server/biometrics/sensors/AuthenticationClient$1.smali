.class Lcom/android/server/biometrics/sensors/AuthenticationClient$1;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

.field final synthetic val$byteToken:[B

.field final synthetic val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field final synthetic val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;[BLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
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
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    return-void
.end method

.method public sendAuthenticationCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->access$200(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public sendAuthenticationResult(Z)V
    .locals 8

    const-string v0, "Biometrics/AuthenticationClient"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->access$000(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Skipping addAuthToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->access$100(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->access$000(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->access$000(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Unable to notify listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v1, "Client not listening"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public sendHapticFeedback()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldVibrate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->vibrateSuccess()V

    :cond_0
    return-void
.end method
