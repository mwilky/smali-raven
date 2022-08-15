.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v3

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method
