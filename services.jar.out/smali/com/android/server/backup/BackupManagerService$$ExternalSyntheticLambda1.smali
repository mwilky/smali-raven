.class public final synthetic Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/BackupManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/BackupManagerService;

    iput p2, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/BackupManagerService;

    iget p0, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/backup/BackupManagerService;->$r8$lambda$s6pWhYaPzmo2Z59Zyczn5lsJYNE(Lcom/android/server/backup/BackupManagerService;I)V

    return-void
.end method
