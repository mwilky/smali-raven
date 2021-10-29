.class Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;,
        Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
    }
.end annotation


# static fields
.field private static final ESCAPED_COMPONENT_SEPARATOR:C = '-'

.field private static final LAUNCH_PARAMS_DIRNAME:Ljava/lang/String; = "launch_params"

.field private static final LAUNCH_PARAMS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final OLD_ESCAPED_COMPONENT_SEPARATOR:C = '_'

.field private static final ORIGINAL_COMPONENT_SEPARATOR:C = '/'

.field private static final TAG:Ljava/lang/String; = "LaunchParamsPersister"

.field private static final TAG_LAUNCH_PARAMS:Ljava/lang/String; = "launch_params"


# instance fields
.field private final mLaunchParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageList:Lcom/android/server/pm/PackageList;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mUserFolderGetter:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowLayoutAffinityMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/PersisterQueue;",
            "Lcom/android/server/wm/ActivityTaskSupervisor;",
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/ActivityTaskSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLaunchParamFolder(I)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "launch_params"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .locals 4

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$removeRecordForPackage$2(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->access$700(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadLaunchParams(I)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v5, "LaunchParamsPersister"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t find launch param folder for user "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    new-instance v0, Landroid/util/ArrayMap;

    array-length v8, v7

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    array-length v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_c

    aget-object v13, v7, v11

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not a file."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected params file name: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    nop

    const/16 v12, 0x5f

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v12, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v0, :cond_3

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_8

    :cond_3
    const/16 v0, 0x2d

    invoke-virtual {v14, v12, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v13, v0

    goto :goto_1

    :cond_4
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_8

    :cond_5
    :goto_1
    nop

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x2f

    const/16 v15, 0x2d

    invoke-virtual {v0, v15, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    if-nez v15, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected file name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_8

    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    :try_start_1
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v17, v4

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_2
    move-object/from16 v18, v6

    :try_start_3
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v16, v6

    move-object/from16 v19, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b

    const/4 v6, 0x3

    move/from16 v7, v16

    if-eq v7, v6, :cond_a

    const/4 v6, 0x2

    if-eq v7, v6, :cond_8

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_2

    :cond_8
    :try_start_4
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v7

    const-string v7, "launch_params"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v20, v9

    :try_start_5
    const-string v9, "Unexpected tag name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v9, v20

    goto :goto_2

    :cond_9
    move/from16 v20, v9

    invoke-virtual {v0, v13, v4}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Landroid/util/TypedXmlPullParser;)V

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v9, v20

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v20, v9

    goto :goto_4

    :cond_a
    move/from16 v16, v7

    move/from16 v20, v9

    goto :goto_3

    :cond_b
    move/from16 v20, v9

    :goto_3
    invoke-virtual {v8, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {v1, v15, v6}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_4
    move-object v4, v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object v4, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object v4, v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object v4, v0

    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore launch params for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v9, v20

    goto/16 :goto_0

    :cond_c
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_d
    return-void
.end method

.method private saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .locals 5

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v1, v3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    iput v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1
    iget-object v2, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    iput-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    :cond_2
    return v1
.end method


# virtual methods
.method getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :goto_0
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_1

    :cond_1
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    :goto_1
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v6, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    iget-object v7, v6, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_2
    move-object v6, v7

    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    iget-object v7, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_4

    return-void

    :cond_4
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-eqz v6, :cond_8

    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-nez v12, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_6

    iget-wide v13, v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    iget-wide v1, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    cmp-long v1, v13, v1

    if-lez v1, :cond_7

    :cond_6
    move-object v8, v12

    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_4

    :cond_8
    if-nez v8, :cond_9

    return-void

    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_a
    iget v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$saveTask$0$LaunchParamsPersister(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .locals 2

    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    return-object v0
.end method

.method onCleanupUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method onSystemReady()V
    .locals 3

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    return-void
.end method

.method onUnlockUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->loadLaunchParams(I)V

    return-void
.end method

.method removeRecordForPackage(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_1
    if-ltz v6, :cond_1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method saveTask(Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .locals 13

    iget-object v6, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object v8, v0

    :goto_0
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    invoke-virtual {v8, v6, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result v10

    iget-object v0, v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz v10, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v12, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, v7

    move-object v3, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_2
    return-void
.end method
