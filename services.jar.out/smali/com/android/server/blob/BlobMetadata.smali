.class Lcom/android/server/blob/BlobMetadata;
.super Ljava/lang/Object;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobMetadata$Accessor;,
        Lcom/android/server/blob/BlobMetadata$Leasee;,
        Lcom/android/server/blob/BlobMetadata$Committer;
    }
.end annotation


# instance fields
.field private mBlobFile:Ljava/io/File;

.field private final mBlobHandle:Landroid/app/blob/BlobHandle;

.field private final mBlobId:J

.field private final mCommitters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Committer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLeasees:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataLock:Ljava/lang/Object;

.field private final mRevocableFds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            "Landroid/util/ArraySet<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-void
.end method

.method private static checkCallerCanAccessBlobsAcrossUsers(Ljava/lang/String;I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "android.permission.ACCESS_BLOBS_ACROSS_USERS"

    invoke-static {v2, p0, p1}, Landroid/permission/PermissionManager;->checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x6

    if-ge p1, v2, :cond_0

    const-string/jumbo v2, "us"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :goto_0
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bh"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Committer;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "l"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Leasee;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const-string v6, "BlobStore"

    const-string v7, "blobHandle should be available"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return-object v6

    :cond_5
    new-instance v6, Lcom/android/server/blob/BlobMetadata;

    invoke-direct {v6, p2, v0, v1, v2}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    invoke-virtual {v6, v3}, Lcom/android/server/blob/BlobMetadata;->setCommitters(Landroid/util/ArraySet;)V

    invoke-virtual {v6, v4}, Lcom/android/server/blob/BlobMetadata;->setLeasees(Landroid/util/ArraySet;)V

    return-object v6
.end method

.method private createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/RevocableFileDescriptor;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    invoke-direct {v2, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_0

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;)V

    invoke-virtual {v0, v1}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "II)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    if-eq p2, v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p3, v4, :cond_1

    return-object v2

    :cond_1
    if-eq p2, v3, :cond_2

    iget v3, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v3, p2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasALeaseeInUser(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasOtherLeasees(Ljava/lang/String;II)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    if-eq p2, v4, :cond_1

    invoke-virtual {v3, p1, p2}, Lcom/android/server/blob/BlobMetadata$Leasee;->equals(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    monitor-exit v0

    return v5

    :cond_1
    if-eqz p1, :cond_3

    iget-object v6, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq p3, v6, :cond_3

    :cond_2
    monitor-exit v0

    return v5

    :cond_3
    if-eq p2, v4, :cond_4

    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    if-eq v4, p2, :cond_4

    monitor-exit v0

    return v5

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isALeaseeInUser(Ljava/lang/String;II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata$Leasee;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPackageInstalledOnUser(Ljava/lang/String;I)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v3

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method static synthetic lambda$removeCommitter$0(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .locals 1

    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeCommittersFromUnknownPkgs$1(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .locals 5

    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, p1, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method static synthetic lambda$removeDataForUser$5(ILcom/android/server/blob/BlobMetadata$Committer;)Z
    .locals 1

    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeDataForUser$6(ILcom/android/server/blob/BlobMetadata$Leasee;)Z
    .locals 1

    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeDataForUser$7(ILjava/util/Map$Entry;)Z
    .locals 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata$Accessor;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    iget v2, v0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v4}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    const/4 v2, 0x1

    return v2
.end method

.method static synthetic lambda$removeExpiredLeases$4(Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeLeasee$2(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .locals 1

    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeLeaseesFromUnknownPkgs$3(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .locals 5

    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method private revokeAndClearAllFds()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v6}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addCommittersAndLeasees(Lcom/android/server/blob/BlobMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addOrReplaceLeasee(Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .locals 11

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget-object v4, v1, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-wide/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V

    iget-object v3, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/blob/BlobMetadata;->revokeAndClearAllFds()V

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "blobHandle:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpFull()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/app/blob/BlobHandle;->dump(Landroid/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v3

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Committers:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "<empty>"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "committer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Committer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Leasees:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "<empty>"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "leasee "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Open fds:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "<empty>"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Accessor;

    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpAsStatsEvent(I)Landroid/util/StatsEvent;
    .locals 20

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_0
    const-wide v5, 0x10300000002L

    const-wide v7, 0x10500000001L

    const-wide v9, 0x20b00000001L

    if-ge v3, v4, :cond_0

    iget-object v11, v1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    iget v12, v11, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-virtual {v0, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v7, v11, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000003L

    iget-object v7, v11, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v7}, Lcom/android/server/blob/BlobAccessMode;->getAccessType()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000004L

    iget-object v7, v11, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v7}, Lcom/android/server/blob/BlobAccessMode;->getAllowedPackagesCount()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v18

    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v0, v3

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v11, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    iget v14, v11, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-virtual {v0, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v14, v11, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    invoke-virtual {v0, v5, v6, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v19

    iget-wide v12, v1, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v14

    iget-object v3, v1, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v3}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v16

    move/from16 v11, p1

    invoke-static/range {v11 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJ[B[B)Landroid/util/StatsEvent;

    move-result-object v3

    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method forEachLeasee(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBlobFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->getBlobFile(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    return-object v0
.end method

.method getBlobHandle()Landroid/app/blob/BlobHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-object v0
.end method

.method getBlobId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    return-wide v0
.end method

.method getExistingCommitter(Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Committer;
    .locals 5

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    if-ne v4, p2, :cond_0

    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLeaseInfo(Ljava/lang/String;I)Landroid/app/blob/LeaseInfo;
    .locals 11

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    if-ne v4, p2, :cond_2

    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v9, v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v5, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    move v9, v4

    :goto_1
    nop

    new-instance v4, Landroid/app/blob/LeaseInfo;

    iget-wide v7, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    iget-object v10, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    monitor-exit v0

    return-object v4

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSize()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method hasACommitterInUser(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasACommitterOrLeaseeInUser(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobMetadata;->hasALeaseeInUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method hasLeaseWaitTimeElapsedForAll()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata$Committer;->getCommitTimeMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/blob/BlobStoreConfig;->hasLeaseWaitTimeElapsed(J)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method hasValidLeases()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isACommitter(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/blob/BlobMetadata;->isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isALeasee(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata$Leasee;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAccessAllowedForCaller(Ljava/lang/String;I)Z
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Lcom/android/server/blob/BlobMetadata$Leasee;->equals(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v0

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_6

    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/blob/BlobMetadata$Committer;

    iget v7, v6, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v2, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6, p1, p2}, Lcom/android/server/blob/BlobMetadata$Committer;->equals(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    monitor-exit v0

    return v4

    :cond_4
    iget-object v7, v6, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v8, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v9, v6, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, p1, v9}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    monitor-exit v0

    return v4

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-static {p1, v2}, Lcom/android/server/blob/BlobMetadata;->checkCallerCanAccessBlobsAcrossUsers(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_7

    monitor-exit v0

    return v1

    :cond_7
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    :goto_3
    if-ge v5, v6, :cond_b

    iget-object v7, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/blob/BlobMetadata$Committer;

    iget v8, v7, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v2, v8, :cond_8

    goto :goto_4

    :cond_8
    invoke-direct {p0, p1, v8}, Lcom/android/server/blob/BlobMetadata;->isPackageInstalledOnUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_4

    :cond_9
    iget-object v9, v7, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v10, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v11, v7, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    monitor-exit v0

    return v4

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$createRevocableFd$8$BlobMetadata(Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method openForRead(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->shouldUseRevocableFdForReads()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCommitter(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda4;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCommittersFromUnknownPkgs(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda6;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDataForUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeExpiredLeases()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLeasee(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLeaseesFromUnknownPkgs(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda7;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCommitters(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Committer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLeasees(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shouldAttributeToLeasee(IZ)Z
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-eqz p2, :cond_2

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method shouldAttributeToLeasee(Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method shouldAttributeToUser(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq p1, v4, :cond_0

    const/4 v4, 0x0

    monitor-exit v0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shouldBeDeleted(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasLeaseWaitTimeElapsedForAll()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "id"

    iget-wide v2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v1, "bh"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v1, "bh"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    const-string v4, "c"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v4, "c"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    const-string/jumbo v4, "l"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "l"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
