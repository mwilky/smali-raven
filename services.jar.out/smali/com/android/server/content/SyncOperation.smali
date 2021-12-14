.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# static fields
.field public static final NO_JOB_ID:I = -0x1

.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field private volatile mImmutableExtras:Landroid/os/Bundle;

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field retries:I

.field scheduleEjAsRegularJob:Z

.field public final sourcePeriodicId:I

.field public syncExemptionFlag:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "DataSettingsChanged"

    const-string v1, "AccountsUpdated"

    const-string v2, "ServiceChanged"

    const-string v3, "Periodic"

    const-string v4, "IsSyncable"

    const-string v5, "AutoSync"

    const-string v6, "MasterSyncAuto"

    const-string v7, "UserStart"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 12

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object v9, p1

    move v10, p2

    move-object/from16 v11, p7

    invoke-direct {v1, p1, v11, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v0, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v10, v0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v1 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V
    .locals 15

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iput p14, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    return-void
.end method

.method private static extrasToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .locals 36

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "SyncManagerJob"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "accountType"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "userId"

    const v8, 0x7fffffff

    invoke-virtual {v0, v7, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v9, "owningUid"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "owningPackage"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v10, "reason"

    invoke-virtual {v0, v10, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    const-string/jumbo v10, "source"

    invoke-virtual {v0, v10, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "allowParallelSyncs"

    invoke-virtual {v0, v10, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string/jumbo v10, "isPeriodic"

    invoke-virtual {v0, v10, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/4 v10, -0x1

    const-string/jumbo v11, "sourcePeriodicId"

    invoke-virtual {v0, v11, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    const-string/jumbo v10, "periodMillis"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    const-string v10, "flexMillis"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v32

    const-string/jumbo v10, "syncExemptionFlag"

    invoke-virtual {v0, v10, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v15, v10

    const-string/jumbo v10, "syncExtras"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v15, v14}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_3

    const-string v12, "ACCOUNT:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v13

    move-object/from16 v16, v10

    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v17, v11

    invoke-virtual {v13, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v1

    invoke-virtual {v13, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    invoke-virtual {v15, v12, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    :goto_1
    move-object/from16 v10, v16

    move-object/from16 v1, v18

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v11, v1, v6, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v4, Lcom/android/server/content/SyncOperation;

    move-object v10, v4

    move v12, v9

    move-object/from16 v13, v25

    move-object/from16 v34, v14

    move/from16 v14, v26

    move-object/from16 v35, v15

    move v15, v8

    move-object/from16 v16, v35

    move/from16 v17, v27

    move/from16 v18, v28

    move/from16 v19, v29

    move-wide/from16 v20, v30

    move-wide/from16 v22, v32

    move/from16 v24, v3

    invoke-direct/range {v10 .. v24}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    const-string/jumbo v10, "jobId"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string v10, "expectedRuntime"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-string/jumbo v10, "retries"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/content/SyncOperation;->retries:I

    const-string v10, "ejDowngradedToRegular"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v4, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    return-object v4
.end method

.method static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    neg-int v1, p1

    sub-int/2addr v1, v0

    sget-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v2, v0

    if-lt v1, v2, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    aget-object v0, v0, v1

    return-object v0
.end method

.method private removeExtra(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    return-void
.end method

.method private toKey()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " account {name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isPeriodic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " flex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method areExtrasEqual(Landroid/os/Bundle;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v5, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v7, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v8, v0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    iget-wide v12, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v14, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    return-object v1
.end method

.method dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v3, "***"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const-string v4, " ExpectedIn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, "expedited"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " EXPEDITED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v4, "schedule_as_expedited_job"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, " EXPEDITED-JOB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    if-eqz v4, :cond_3

    const-string v4, "(scheduled-as-regular)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v4, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ExemptionFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v4, " STANDBY-EXEMPTED(TOP)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v4, " STANDBY-EXEMPTED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    nop

    :goto_1
    const-string v4, " Reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v4}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_4

    const-string v4, " (period="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v1, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    const-string v4, " flex="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-static {v1, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v4, p0, Lcom/android/server/content/SyncOperation;->retries:I

    if-lez v4, :cond_5

    const-string v4, " Retries="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    if-nez p2, :cond_7

    const-string v4, " Owner={"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lcom/android/server/content/SyncAdapterStateFetcher;->getStandbyBucket(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {p3, v3}, Lcom/android/server/content/SyncAdapterStateFetcher;->isAppActive(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, " [ACTIVE]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method enableBackoff()V
    .locals 1

    const-string v0, "ignore_backoff"

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncOperation;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method enableTwoWaySync()V
    .locals 1

    const-string/jumbo v0, "upload"

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncOperation;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method findPriority()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getClonedExtras()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getExtrasAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/content/SyncOperation;->extrasToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasDoNotRetry()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "do_not_retry"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method hasIgnoreBackoff()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method hasRequireCharging()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "require_charging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isAppStandbyExempted()Z
    .locals 1

    iget v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConflict(Lcom/android/server/content/SyncOperation;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isDerivedFromFailedPeriodicSync()Z
    .locals 2

    iget v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isExpedited()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "expedited"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isIgnoreSettings()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInitialization()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isManual()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNotAllowedOnMetered()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isReasonPeriodic()Z
    .locals 2

    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isScheduledAsExpeditedJob()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "schedule_as_expedited_job"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isUpload()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "upload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {v0, v2, v1}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method toJobInfoExtras()Landroid/os/PersistableBundle;
    .locals 11

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "accountType"

    const-string v6, "accountName"

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Landroid/accounts/Account;

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Landroid/accounts/Account;

    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v10, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v6, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACCOUNT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_1

    :cond_0
    instance-of v5, v7, Ljava/lang/Long;

    if-eqz v5, :cond_1

    move-object v5, v7

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    instance-of v5, v7, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    move-object v5, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    instance-of v5, v7, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    move-object v5, v7

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    instance-of v5, v7, Ljava/lang/Float;

    if-eqz v5, :cond_4

    move-object v5, v7

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_4
    instance-of v5, v7, Ljava/lang/Double;

    if-eqz v5, :cond_5

    move-object v5, v7

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_5
    instance-of v5, v7, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-nez v7, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v5, "SyncManager"

    const-string v6, "Unknown extra type."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "syncExtras"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const/4 v3, 0x1

    const-string v4, "SyncManagerJob"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-string/jumbo v4, "provider"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const-string/jumbo v4, "userId"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    const-string/jumbo v4, "owningUid"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    const-string/jumbo v4, "owningPackage"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    const-string/jumbo v4, "source"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const-string v4, "allowParallelSyncs"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v3, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v4, "jobId"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const-string/jumbo v4, "isPeriodic"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v3, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const-string/jumbo v4, "sourcePeriodicId"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-string/jumbo v5, "periodMillis"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const-string v5, "flexMillis"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-string v5, "expectedRuntime"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    iget v3, p0, Lcom/android/server/content/SyncOperation;->retries:I

    const-string/jumbo v4, "retries"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const-string/jumbo v4, "syncExemptionFlag"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    const-string v4, "ejDowngradedToRegular"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wakeLockName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0
.end method
