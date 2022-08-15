.class public Lcom/android/server/biometrics/sensors/AuthenticationClient$2;
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

.field public final synthetic val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLifecycleAfterAuth()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    return-void
.end method

.method public sendAuthenticationCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$msendCancelOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public sendAuthenticationResult(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Biometrics/AuthenticationClient"

    const-string v0, "Unable to notify listener"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public sendHapticFeedback()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateError()V

    :cond_0
    return-void
.end method
