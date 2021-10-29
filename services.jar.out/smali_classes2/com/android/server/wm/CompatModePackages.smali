.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field private static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field private static final COMPAT_FLAG_ENABLED:I = 0x2

.field public static final DOWNSCALED:J = 0xa09e1d7L

.field public static final DOWNSCALE_30:J = 0xb52b678L

.field public static final DOWNSCALE_35:J = 0xb52b555L

.field public static final DOWNSCALE_40:J = 0xb52b676L

.field public static final DOWNSCALE_45:J = 0xb52b576L

.field public static final DOWNSCALE_50:J = 0xa8bb015L

.field public static final DOWNSCALE_55:J = 0xb52b674L

.field public static final DOWNSCALE_60:J = 0xa8bb033L

.field public static final DOWNSCALE_65:J = 0xb52b550L

.field public static final DOWNSCALE_70:J = 0xa8bb06dL

.field public static final DOWNSCALE_75:J = 0xb52b573L

.field public static final DOWNSCALE_80:J = 0xa8bb021L

.field public static final DOWNSCALE_85:J = 0xb52b546L

.field public static final DOWNSCALE_90:J = 0xae57a6bL

.field private static final DO_NOT_DOWNSCALE_TO_1080P_ON_TV:J = 0x9653d2aL

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 12

    const-string v0, "Error reading compat-packages"

    const-string v1, "ActivityTaskManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "packages-compat.xml"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "compat-mode"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    new-instance v3, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v3, v2

    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    move v4, v8

    :cond_3
    if-ne v4, v6, :cond_4

    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v6, :cond_4

    const-string v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "name"

    const/4 v9, 0x0

    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v10, "mode"

    const/4 v11, 0x0

    invoke-interface {v2, v9, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v8

    if-ne v4, v5, :cond_3

    :cond_5
    if-eqz v3, :cond_7

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    if-eqz v3, :cond_6

    :try_start_4
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_6
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :cond_7
    :goto_3
    return-void

    :goto_4
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    :cond_8
    :goto_5
    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/wm/CompatModePackages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->saveCompatModes()V

    return-void
.end method

.method private getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_0
    return-void
.end method

.method private saveCompatModes()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "compat-packages"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_2
    invoke-interface {v3, v7, v10, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v10

    goto :goto_1

    :catch_0
    move-exception v10

    :goto_1
    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0, v9}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    :cond_3
    const-string v11, "pkg"

    invoke-interface {v2, v5, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "name"

    invoke-interface {v2, v5, v11, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "mode"

    invoke-interface {v2, v5, v11, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "pkg"

    invoke-interface {v2, v5, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    goto :goto_0

    :cond_4
    const-string v6, "compat-packages"

    invoke-interface {v2, v5, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    iget-object v5, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "ActivityTaskManager"

    const-string v4, "Error writing compat packages"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private scheduleWrite()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setPackageFlagLocked(Ljava/lang/String;IZ)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    if-eqz p3, :cond_0

    not-int v1, p2

    and-int/2addr v1, v0

    goto :goto_0

    :cond_0
    or-int v1, v0, p2

    :goto_0
    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_2
    return-void
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;I)F

    move-result v7

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    new-instance v9, Landroid/content/res/CompatibilityInfo;

    iget v2, v8, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object v0, v9

    move-object v1, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    return-object v9
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method getCompatScale(Ljava/lang/String;I)F
    .locals 6

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const-wide/32 v1, 0xa09e1d7

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-wide/32 v1, 0xae57a6b

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f8e38e4

    return v1

    :cond_0
    const-wide/32 v1, 0xb52b546

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f969696

    return v1

    :cond_1
    const-wide/32 v1, 0xa8bb021

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3fa00000    # 1.25f

    return v1

    :cond_2
    const-wide/32 v1, 0xb52b573

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3faaaaab

    return v1

    :cond_3
    const-wide/32 v1, 0xa8bb06d

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x3fb6db6e

    return v1

    :cond_4
    const-wide/32 v1, 0xb52b550

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x3fc4ec4f

    return v1

    :cond_5
    const-wide/32 v1, 0xa8bb033

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x3fd55555

    return v1

    :cond_6
    const-wide/32 v1, 0xb52b674

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x3fe8ba2e

    return v1

    :cond_7
    const-wide/32 v1, 0xa8bb015

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/high16 v1, 0x40000000    # 2.0f

    return v1

    :cond_8
    const-wide/32 v1, 0xb52b576

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x400e38e4

    return v1

    :cond_9
    const-wide/32 v1, 0xb52b676

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x40200000    # 2.5f

    return v1

    :cond_a
    const-wide/32 v1, 0xb52b555

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x4036db6e

    return v1

    :cond_b
    const-wide/32 v1, 0xb52b678

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x40555555

    return v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0x438

    if-le v3, v4, :cond_d

    const-wide/32 v4, 0x9653d2a

    invoke-static {v4, v5, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_d

    int-to-float v4, v3

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    return v4

    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    return v1
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_2
    return-void
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageFlagLocked(Ljava/lang/String;IZ)V

    return-void
.end method

.method setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    const-string v0, "ActivityTaskManager"

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown screen compat mode req #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    and-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    goto :goto_1

    :pswitch_1
    const/4 v8, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v8, 0x0

    nop

    :goto_1
    move v9, v5

    const/4 v10, 0x2

    if-eqz v8, :cond_1

    or-int/2addr v9, v10

    goto :goto_2

    :cond_1
    and-int/lit8 v9, v9, -0x3

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v12

    const-string v13, "Ignoring compat mode change of "

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "; compatibility never needed"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_2
    invoke-virtual {v11}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; compatibility always needed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_3
    if-eq v9, v5, :cond_9

    if-eqz v9, :cond_4

    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/wm/Task;->restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v6

    move v15, v0

    :goto_4
    if-ltz v15, :cond_8

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v6, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v16, 0x1

    goto :goto_7

    :cond_5
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v1, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x1

    :try_start_1
    aput-object v17, v1, v16

    move-object/from16 v18, v0

    const v0, 0x4fba1a5b

    const/4 v3, 0x0

    invoke-static {v7, v0, v10, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/16 v16, 0x1

    :goto_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, v4, v11}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    const/16 v16, 0x1

    :goto_6
    goto :goto_7

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    :goto_7
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, v16

    const/4 v10, 0x2

    goto :goto_4

    :cond_8
    if-eqz v13, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    invoke-virtual {v12, v13, v1, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method
