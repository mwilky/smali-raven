.class Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;
.super Ljava/lang/Object;
.source "BiometricSchedulerOperation.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Finished / destroy]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->access$000(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->access$102(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;I)I

    return-void
.end method
