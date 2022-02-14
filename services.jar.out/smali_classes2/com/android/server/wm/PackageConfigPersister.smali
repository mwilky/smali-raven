.class public Lcom/android/server/wm/PackageConfigPersister;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;,
        Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;,
        Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    }
.end annotation


# static fields
.field private static final ATTR_LOCALES:Ljava/lang/String; = "locale_list"

.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final DEBUG:Z = false

.field private static final PACKAGE_DIRNAME:Ljava/lang/String; = "package_configs"

.field private static final SUFFIX_FILE_NAME:Ljava/lang/String; = "_config.xml"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mModified:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingWrite:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/PackageConfigPersister;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PackageConfigPersister;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PackageConfigPersister;Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-object v1
.end method

.method private findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static getUserConfigsDir(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package_configs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$removePackage$1(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removePackage(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const-class v3, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;

    invoke-direct {v3, p2, p1}, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_1
    return-void
.end method

.method private removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ")V"
        }
    .end annotation

    iget v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateLocales(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateNightMode(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iput-object v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App-specific configuration not found for packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    iget-object v3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;-><init>(Ljava/lang/Integer;Landroid/os/LocaleList;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$removeUser$0$PackageConfigPersister(Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 2

    iget-object v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    return-void
.end method

.method loadUserPackages(I)V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v4, v0

    if-nez v4, :cond_0

    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadPackages: empty list files from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_6

    aget-object v0, v4, v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_config.xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_1

    move/from16 v13, p1

    goto/16 :goto_d

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v7, v0

    :try_start_2
    invoke-static {v7}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v11

    move v12, v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_4

    const/4 v11, 0x3

    if-eq v12, v11, :cond_4

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x2

    if-ne v12, v14, :cond_3

    const-string v15, "config"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v15

    sub-int/2addr v15, v13

    :goto_2
    if-ltz v15, :cond_3

    invoke-interface {v0, v15}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    invoke-interface {v0, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    move-object/from16 v14, v17

    goto :goto_3

    :sswitch_0
    const-string v13, "locale_list"

    move-object/from16 v14, v17

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x2

    goto :goto_4

    :sswitch_1
    move-object/from16 v14, v17

    const-string v13, "night_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_4

    :sswitch_2
    move-object/from16 v14, v17

    const-string v13, "package_name"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v13, -0x1

    :goto_4
    packed-switch v13, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-static/range {v16 .. v16}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v13

    move-object v10, v13

    goto :goto_5

    :pswitch_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v9, v13

    goto :goto_5

    :pswitch_2
    move-object/from16 v8, v16

    nop

    :goto_5
    add-int/lit8 v15, v15, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    iget-object v11, v1, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v13, p1

    :try_start_3
    invoke-direct {v1, v11, v8, v13}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v11

    iput-object v9, v11, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iput-object v10, v11, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_5
    move/from16 v13, p1

    :goto_6
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_c

    :catchall_1
    move-exception v0

    move/from16 v13, p1

    :goto_7
    move-object v8, v0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_6
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v8
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    move/from16 v13, p1

    :goto_9
    :try_start_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_d

    :catch_4
    move-exception v0

    move/from16 v13, p1

    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_5
    move-exception v0

    move/from16 v13, p1

    :goto_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_c
    nop

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v13, p1

    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_e
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_e

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fe3451c -> :sswitch_2
        -0x23dea296 -> :sswitch_1
        0x72044363 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onPackageUninstall(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

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

.method removeUser(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageConfigPersister;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p3, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;)Z

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

.method updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getNightMode()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getNightMode()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->isResetNightMode()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/PackageConfigPersister;->updateNightMode(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/PackageConfigPersister;->updateLocales(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v4

    if-nez v4, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v5, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;-><init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
