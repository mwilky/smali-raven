.class public Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "AdbRestoreFinishedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mToken:I


# direct methods
.method public constructor <init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iput p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mToken:I

    iput-object p3, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mToken:I

    iget-object p0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
