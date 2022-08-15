.class public interface abstract Lcom/android/server/backup/OperationStorage;
.super Ljava/lang/Object;
.source "OperationStorage.java"


# virtual methods
.method public abstract registerOperation(IILcom/android/server/backup/BackupRestoreTask;I)V
.end method

.method public abstract registerOperationForPackages(IILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/BackupRestoreTask;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract removeOperation(I)V
.end method
