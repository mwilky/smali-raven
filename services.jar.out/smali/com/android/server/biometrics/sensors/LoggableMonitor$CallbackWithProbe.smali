.class public Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/LoggableMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CallbackWithProbe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;"
    }
.end annotation


# instance fields
.field private final mProbe:Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mStartWithClient:Z


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->mStartWithClient:Z

    return-void
.end method


# virtual methods
.method public getProbe()Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    return-object v0
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;->disable()V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->mStartWithClient:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;->enable()V

    :cond_0
    return-void
.end method
