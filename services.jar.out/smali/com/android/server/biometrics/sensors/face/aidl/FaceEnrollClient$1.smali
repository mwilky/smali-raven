.class Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;
.super Ljava/lang/Object;
.source "FaceEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->access$000(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    return-void
.end method
