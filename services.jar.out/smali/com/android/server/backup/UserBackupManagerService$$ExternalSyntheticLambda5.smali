.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/app/backup/ISelectBackupTransportCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/app/backup/ISelectBackupTransportCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/app/backup/ISelectBackupTransportCallback;

    invoke-static {v0, v1, p0}, Lcom/android/server/backup/UserBackupManagerService;->$r8$lambda$8v973YC7vSdaodwyrJafxFOjv3w(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    return-void
.end method
