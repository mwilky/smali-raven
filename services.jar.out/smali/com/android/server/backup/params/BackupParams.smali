.class public Lcom/android/server/backup/params/BackupParams;
.super Ljava/lang/Object;
.source "BackupParams.java"


# instance fields
.field public dirName:Ljava/lang/String;

.field public fullPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public kvPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public nonIncrementalBackup:Z

.field public observer:Landroid/app/backup/IBackupObserver;

.field public transportClient:Lcom/android/server/backup/transport/TransportClient;

.field public userInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "ZZ",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/BackupParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iput-object p2, p0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iput-object p6, p0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-object p7, p0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iput-boolean p8, p0, Lcom/android/server/backup/params/BackupParams;->userInitiated:Z

    iput-boolean p9, p0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    iput-object p10, p0, Lcom/android/server/backup/params/BackupParams;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method
