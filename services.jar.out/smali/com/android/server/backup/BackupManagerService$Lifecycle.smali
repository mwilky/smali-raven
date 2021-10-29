.class public Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "backup"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->onUnlockUser(I)V

    return-void
.end method

.method publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
