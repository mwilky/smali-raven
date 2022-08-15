.class public Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;
.super Ljava/lang/Object;
.source "BaseClientMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    const-string p0, "BaseClientMonitor"

    const-string/jumbo p1, "mCallback onClientFinished: called before set (should not happen)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    const-string p0, "BaseClientMonitor"

    const-string/jumbo p1, "mCallback onClientStarted: called before set (should not happen)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
