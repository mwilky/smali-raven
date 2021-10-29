.class public Lcom/android/server/uwb/UwbService;
.super Lcom/android/server/SystemService;
.source "UwbService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbService"


# instance fields
.field private final mImpl:Lcom/android/server/uwb/UwbServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/uwb/UwbServiceImpl;

    new-instance v1, Lcom/android/server/uwb/UwbInjector;

    invoke-direct {v1, p1}, Lcom/android/server/uwb/UwbInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/uwb/UwbServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/uwb/UwbInjector;)V

    iput-object v0, p0, Lcom/android/server/uwb/UwbService;->mImpl:Lcom/android/server/uwb/UwbServiceImpl;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string v0, "UwbService"

    const-string v1, "Registering uwb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/uwb/UwbService;->mImpl:Lcom/android/server/uwb/UwbServiceImpl;

    const-string v1, "uwb"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/uwb/UwbService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
