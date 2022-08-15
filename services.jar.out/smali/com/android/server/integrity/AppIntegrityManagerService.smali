.class public Lcom/android/server/integrity/AppIntegrityManagerService;
.super Lcom/android/server/SystemService;
.source "AppIntegrityManagerService.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mService:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->create(Landroid/content/Context;)Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mService:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    const-string v1, "app_integrity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
