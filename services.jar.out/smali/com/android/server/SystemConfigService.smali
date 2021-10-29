.class public Lcom/android/server/SystemConfigService;
.super Lcom/android/server/SystemService;
.source "SystemConfigService.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInterface:Landroid/os/ISystemConfig$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/SystemConfigService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SystemConfigService$1;-><init>(Lcom/android/server/SystemConfigService;)V

    iput-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Landroid/os/ISystemConfig$Stub;

    iput-object p1, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Landroid/os/ISystemConfig$Stub;

    const-string/jumbo v1, "system_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfigService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
