.class Lcom/android/server/pm/ShortcutLauncher;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutLauncher.java"


# static fields
.field private static final ATTR_LAUNCHER_USER_ID:Ljava/lang/String; = "launcher-user"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_PACKAGE_USER_ID:Ljava/lang/String; = "package-user"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PIN:Ljava/lang/String; = "pin"

.field static final TAG_ROOT:Ljava/lang/String; = "launcher-pins"


# instance fields
.field private final mOwnerUserId:I

.field private final mPinnedShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1

    nop

    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p4, p3, v0}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    return-void
.end method

.method public static loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .locals 9

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    const/4 v5, 0x2

    if-eq v6, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v5, v7, :cond_1

    const-string v7, "launcher-pins"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    :cond_1
    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :cond_2
    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catch_1
    move-exception v2

    return-object v1
.end method

.method public static loadFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "package-name"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const-string v5, "launcher-user"

    invoke-static {v0, v5, v1}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    :goto_0
    nop

    new-instance v6, Lcom/android/server/pm/ShortcutLauncher;

    move-object/from16 v7, p1

    invoke-direct {v6, v7, v1, v4, v5}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    const/4 v8, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    move v11, v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_9

    const/4 v10, 0x3

    if-ne v11, v10, :cond_1

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v9, :cond_9

    :cond_1
    const/4 v10, 0x2

    if-eq v11, v10, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v9, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    if-ne v10, v14, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v14, "package"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_3

    :sswitch_1
    const-string v12, "package-info"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v15

    goto :goto_3

    :goto_2
    move/from16 v12, v16

    :goto_3
    packed-switch v12, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_4

    move v14, v1

    goto :goto_4

    :cond_4
    const-string v14, "package-user"

    invoke-static {v0, v14, v1}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    :goto_4
    nop

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v15

    iget-object v15, v6, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {v14, v12}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v15, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, p2

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Landroid/util/TypedXmlPullParser;Z)V

    goto :goto_9

    :cond_5
    :goto_5
    add-int/lit8 v1, v9, 0x2

    if-ne v10, v1, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :cond_6
    goto :goto_6

    :pswitch_2
    const-string v1, "pin"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_7

    :goto_6
    move/from16 v15, v16

    :goto_7
    packed-switch v15, :pswitch_data_2

    goto :goto_8

    :pswitch_3
    if-nez v8, :cond_7

    const-string v1, "ShortcutService"

    const-string v12, "pin in invalid place"

    invoke-static {v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_7
    const-string v1, "value"

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_8
    :goto_8
    invoke-static {v10, v13}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    nop

    :goto_9
    move/from16 v1, p2

    goto/16 :goto_1

    :cond_9
    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x72a5f22b -> :sswitch_1
        -0x301acbba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b195
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private onRestoreBlocked()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, p1, v1, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method protected canRestoreAnyVersion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method cleanUpPackage(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 8

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Package user: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  Owner user: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Package: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  User: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "    Pinned: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public ensurePackageInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method getAllPinnedShortcutsForTest(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public getOwnerUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    return v0
.end method

.method public getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public hasPinned(Landroid/content/pm/ShortcutInfo;)Z
    .locals 2

    nop

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onRestored(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutLauncher;->onRestoreBlocked()V

    :cond_0
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    if-eqz p4, :cond_5

    :cond_4
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v2, "launcher-pins"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package-name"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v3

    int-to-long v5, v3

    const-string v3, "launcher-user"

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlSerializer;Z)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    if-eqz p2, :cond_2

    iget v6, v5, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v7

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "package"

    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v5, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-static {p1, v4, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget v7, v5, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    int-to-long v7, v7

    const-string v9, "package-user"

    invoke-static {p1, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    iget-object v7, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "pin"

    invoke-static {p1, v11, v10}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
