.class public Lcom/android/server/biometrics/sensors/HalClientMonitor$1;
.super Ljava/lang/Object;
.source "HalClientMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/HalClientMonitor;->getBiometricContextUnsubscriber()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    return-void
.end method
