.class public final synthetic Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public final synthetic f$1:Landroid/app/backup/IRestoreObserver;

.field public final synthetic f$2:Landroid/app/backup/IBackupManagerMonitor;

.field public final synthetic f$3:J

.field public final synthetic f$4:[Ljava/lang/String;

.field public final synthetic f$5:Landroid/app/backup/RestoreSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$1:Landroid/app/backup/IRestoreObserver;

    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$3:J

    iput-object p6, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$4:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$5:Landroid/app/backup/RestoreSet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$1:Landroid/app/backup/IRestoreObserver;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$3:J

    iget-object v5, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$4:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;->f$5:Landroid/app/backup/RestoreSet;

    move-object v7, p1

    check-cast v7, Lcom/android/server/backup/transport/TransportClient;

    move-object v8, p2

    check-cast v8, Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$restorePackages$2$ActiveRestoreSession(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p1

    return-object p1
.end method
