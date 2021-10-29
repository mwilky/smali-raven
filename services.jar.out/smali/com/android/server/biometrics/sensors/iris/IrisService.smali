.class public Lcom/android/server/biometrics/sensors/iris/IrisService;
.super Lcom/android/server/SystemService;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IrisService"


# instance fields
.field private final mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService;Lcom/android/server/biometrics/sensors/iris/IrisService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/iris/IrisService;)Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    const-string v1, "iris"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/iris/IrisService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
