.class Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field private static final ATTR_KNOWN_LOCALES:Ljava/lang/String; = "locales"

.field private static final ATTR_LAST_APP_SCAN_OS_FINGERPRINT:Ljava/lang/String; = "last-app-scan-fp"

.field private static final ATTR_LAST_APP_SCAN_TIME:Ljava/lang/String; = "last-app-scan-time2"

.field private static final ATTR_RESTORE_SOURCE_FINGERPRINT:Ljava/lang/String; = "restore-from-fp"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DIRECTORY_LUANCHERS:Ljava/lang/String; = "launchers"

.field static final DIRECTORY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_LAUNCHERS:Ljava/lang/String; = "launchers"

.field private static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field private mCachedLauncher:Ljava/lang/String;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private mKnownLocales:Ljava/lang/String;

.field private mLastAppScanOsFingerprint:Ljava/lang/String;

.field private mLastAppScanTime:J

.field private final mLaunchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreFromOsFingerprint:Ljava/lang/String;

.field final mService:Lcom/android/server/pm/ShortcutService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    iget-object v0, p1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 3

    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutLauncher;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addPackage(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 2

    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v1, v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Path: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "/ has "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " files, size="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Consumer<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getKnownLocales()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    return-object v0
.end method

.method private getShortcutPackageItemFile(Lcom/android/server/pm/ShortcutPackageItem;)Ljava/io/File;
    .locals 5

    instance-of v0, p1, Lcom/android/server/pm/ShortcutLauncher;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v3, "launchers"

    goto :goto_0

    :cond_0
    const-string v3, "packages"

    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, ".xml"

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method static synthetic lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    return-void
.end method

.method static synthetic lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resolveResourceStrings()V

    return-void
.end method

.method static synthetic lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 1

    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getAppSearch$7(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$loadFromXml$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ZLjava/io/File;)V
    .locals 3

    invoke-static {p0, p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromFile(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadFromXml$4(Lcom/android/server/pm/ShortcutUser;IZLjava/io/File;)V
    .locals 1

    nop

    invoke-static {p3, p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    :cond_0
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v5, v0

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "locales"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string v0, "last-app-scan-time2"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x0

    :goto_0
    iput-wide v11, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string v0, "last-app-scan-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string v0, "restore-from-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v11

    move v12, v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_5

    const/4 v11, 0x3

    if-ne v12, v11, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v0, :cond_6

    :cond_1
    const/4 v11, 0x2

    if-eq v12, v11, :cond_2

    move/from16 v16, v0

    goto :goto_5

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v0, 0x1

    if-ne v11, v15, :cond_4

    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v13, "package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    goto :goto_3

    :sswitch_1
    const-string v13, "launcher-pins"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :goto_2
    move v13, v15

    :goto_3
    packed-switch v13, :pswitch_data_0

    move/from16 v16, v0

    goto :goto_4

    :pswitch_0
    nop

    invoke-static {v2, v5, v3, v4}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_1
    invoke-static {v1, v5, v2, v4}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Landroid/util/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v13

    iget-object v15, v5, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    move/from16 v16, v0

    invoke-virtual {v13}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    move/from16 v0, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v0

    :goto_4
    invoke-static {v11, v14}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_5
    move/from16 v0, v16

    goto :goto_1

    :cond_5
    move/from16 v16, v0

    :cond_6
    nop

    if-eqz v6, :cond_7

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    const-string v8, "packages"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;

    invoke-direct {v8, v1, v5, v4}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V

    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "launchers"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5, v3, v4}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/ShortcutUser;IZ)V

    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    :goto_6
    return-object v5

    :catch_0
    move-exception v0

    new-instance v7, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    const-string v8, "Unable to parse file"

    invoke-direct {v7, v8, v0}, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4457a875 -> :sswitch_1
        -0x301acbba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Landroid/util/TypedXmlSerializer;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getShortcutPackageItemFile(Lcom/android/server/pm/ShortcutPackageItem;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToFile(Ljava/io/File;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda7;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public detectLocaleChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    sget-object v1, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 4

    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    const-string v1, "  "

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "User: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  Known locales: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Last app scan: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last app scan FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Restore from FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Cached launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Bitmap directories: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    :cond_5
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutLauncher;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "launchers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutPackage;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public forAllLaunchers(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forAllPackageItems(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method getAllLaunchersForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getAllPackagesForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getAppSearch(Landroid/app/appsearch/AppSearchManager$SearchContext;)Lcom/android/internal/infra/AndroidFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchManager$SearchContext;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "app search manager is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v3, p1, v4, v5}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getCachedLauncher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAppScanOsFingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAppScanTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-wide v0
.end method

.method public getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .locals 4

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/server/pm/ShortcutLauncher;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    :goto_0
    return-object v1
.end method

.method public getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->attemptToRestoreIfNeededAndSave()V

    :cond_0
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$mergeRestoredFile$5$ShortcutUser(Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V
    .locals 2

    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    return-void
.end method

.method public synthetic lambda$mergeRestoredFile$6$ShortcutUser(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V
    .locals 4

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->hasNonManifestShortcuts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcuts for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->restoreParsedShortcuts()V

    invoke-direct {p0, p4}, Lcom/android/server/pm/ShortcutUser;->addPackage(Lcom/android/server/pm/ShortcutPackage;)V

    const/4 v1, 0x0

    aget v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v1

    aget v2, p3, v1

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p3, v1

    return-void
.end method

.method logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getSharingShortcutCount()I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x6b5

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const/4 v1, 0x1

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v1, v1, [I

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored: L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " P="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " S="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortcutService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCalledByPublisher(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutLauncher;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->removeShortcuts()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    return-object v0
.end method

.method public rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public resetThrottling()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetThrottling()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "user"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "restore-from-fp"

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string v4, "locales"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-wide v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string v5, "last-app-scan-time2"

    invoke-static {p1, v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string v4, "last-app-scan-fp"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "packages"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    new-instance v3, Ljava/io/File;

    const-string v4, "launchers"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public setCachedLauncher(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    return-void
.end method

.method public setLastAppScanOsFingerprint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-void
.end method

.method public setLastAppScanTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-void
.end method
