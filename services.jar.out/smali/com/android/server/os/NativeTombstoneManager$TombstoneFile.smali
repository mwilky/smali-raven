.class Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
.super Ljava/lang/Object;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/NativeTombstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TombstoneFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;
    }
.end annotation


# instance fields
.field mAppId:I

.field mCrashReason:Ljava/lang/String;

.field final mPfd:Landroid/os/ParcelFileDescriptor;

.field mPid:I

.field mProcessName:Ljava/lang/String;

.field mPurged:Z

.field final mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

.field mTimestampMs:J

.field mUid:I

.field mUserId:I


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static parse(Landroid/os/ParcelFileDescriptor;)Ljava/util/Optional;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/util/proto/ProtoParseException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, ""

    const/4 v9, -0x1

    if-eq v0, v9, :cond_3

    :try_start_1
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v10, 0x20b0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    :goto_1
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    if-eq v0, v9, :cond_2

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide v8, 0x10900000001L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_2
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :sswitch_1
    if-nez v5, :cond_0

    const-wide v8, 0x20900000009L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :sswitch_2
    const-wide v8, 0x10900000008L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :sswitch_3
    const-wide v8, 0x10d00000007L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    move v4, v0

    goto :goto_0

    :sswitch_4
    const-wide v8, 0x10d00000005L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/proto/ProtoParseException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v0

    goto :goto_0

    :cond_3
    nop

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tombstone\'s UID ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") not an app, ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v9, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-object v11, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v11, v11, Landroid/system/StructTimespec;->tv_sec:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iget-object v13, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v13, v13, Landroid/system/StructTimespec;->tv_nsec:J

    const-wide/32 v15, 0xf4240

    div-long/2addr v13, v15
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    add-long v9, v11, v13

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Failed to get timestamp of tombstone"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    const-string/jumbo v12, "u:r:untrusted_app"

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tombstone has invalid selinux label ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "), ignoring"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v8

    return-object v8

    :cond_5
    new-instance v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput v0, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    iput v11, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    iput v3, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    iput v4, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v8, v5

    :goto_3
    iput-object v8, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    iput-wide v9, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    iput-object v6, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    return-object v8

    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to parse tombstone"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v8

    return-object v8

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public getPfdRetriever()Landroid/app/IParcelFileDescriptorRetriever;
    .locals 1

    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    return-object v0
.end method

.method public matches(Landroid/app/ApplicationExitInfo;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public purge()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to truncate tombstone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    :cond_0
    return-void
.end method

.method public toAppExitInfo()Landroid/app/ApplicationExitInfo;
    .locals 4

    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    iget-wide v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    return-object v0
.end method
