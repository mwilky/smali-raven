.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 32

    if-eqz p10, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    or-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    if-eqz p9, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    if-eqz p10, :cond_2

    move/from16 v28, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    move/from16 v28, v1

    :goto_2
    nop

    new-instance v1, Landroid/content/pm/ShortcutInfo;

    move-object v2, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    move/from16 v12, p6

    move/from16 v15, p7

    move/from16 v19, p8

    move/from16 v23, v0

    move/from16 v24, p9

    move-object/from16 v31, p11

    invoke-direct/range {v2 .. v31}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;)V

    return-object v1
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "ShortcutService"

    const-string v2, "android:name for shortcut category must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const-string v1, "ShortcutService"

    const-string v2, "android:name must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "ShortcutService"

    const-string v4, "android:targetClass must be provided."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/server/pm/ShareTargetInfo;

    invoke-direct {v2, v3, v1, v3}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .locals 12

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const-string v1, "ShortcutService"

    const-string v2, "android:mimeType must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 18

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    iget-object v0, v13, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object/from16 v15, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x3

    const-string v4, "ShortcutService"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:shortcutId must be string literal. activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception v0

    move-object/from16 v17, v9

    goto/16 :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v9, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v9, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    move/from16 v16, v1

    const/4 v1, 0x4

    invoke-virtual {v9, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v1, 0x5

    invoke-virtual {v9, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v1, 0x6

    invoke-virtual {v9, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v1, v13, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v1

    goto :goto_0

    :cond_1
    move-object v12, v5

    :goto_0
    nop

    :try_start_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutId must be provided. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :cond_2
    if-nez v16, :cond_3

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :cond_3
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, v16

    move-object/from16 v17, v9

    move/from16 v9, p5

    :try_start_7
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v17, v9

    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v7, p0

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v3, p1

    move/from16 v13, p2

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    move-object v10, v1

    move v11, v2

    :goto_0
    if-ge v11, v0, :cond_3

    :try_start_1
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v12, v1

    if-nez v12, :cond_1

    move/from16 v13, p2

    goto :goto_1

    :cond_1
    nop

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v13, p2

    :try_start_2
    invoke-virtual {p0, v1, v13}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    move-object v14, v1

    if-eqz v14, :cond_2

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v1

    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v13, p2

    :goto_2
    move-object v1, v10

    goto :goto_3

    :cond_3
    move/from16 v13, p2

    nop

    return-object v10

    :catch_2
    move-exception v0

    move/from16 v13, p2

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v9

    :cond_4
    move-object/from16 v3, p1

    move/from16 v13, p2

    :goto_4
    return-object v9
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.app.shortcuts"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move-object v9, v0

    if-nez v9, :cond_1

    nop

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p4

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-direct {v0, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v12, v0

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    move v13, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-object v15, v5

    move-object/from16 v6, p4

    move/from16 v16, v0

    move v5, v1

    move-object v0, v2

    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2b

    const/4 v1, 0x3

    if-ne v2, v1, :cond_3

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    if-lez v17, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v13, p5

    move-object v2, v7

    goto/16 :goto_f

    :cond_3
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 p4, v17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object/from16 v18, v17

    const-string v8, "shortcut"

    const-string v10, "ShortcutService"

    if-ne v2, v1, :cond_d

    move/from16 v1, p4

    const/4 v7, 0x2

    if-ne v1, v7, :cond_c

    move-object/from16 v7, v18

    :try_start_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v0, :cond_4

    move/from16 p4, v5

    move-object/from16 v18, v11

    goto/16 :goto_5

    :cond_4
    move-object v8, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v11

    const-string v11, "Shortcut "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has no intent. Skipping it."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    move-object/from16 v18, v11

    goto :goto_2

    :cond_6
    move-object/from16 v18, v11

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-lt v5, v13, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "More than "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " shortcuts found for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ". Skipping the rest."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    return-object v6

    :cond_8
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v11, 0x1000c000

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v8, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_9

    invoke-virtual {v8, v4}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    const/4 v0, 0x0

    move-object v4, v0

    :cond_9
    if-nez v6, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    :cond_a
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v0, v17

    move-object/from16 v11, v18

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v11, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    :goto_3
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v0, v17

    move-object/from16 v11, v18

    goto/16 :goto_0

    :cond_b
    move-object/from16 v18, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v13, p5

    move-object v1, v9

    goto/16 :goto_10

    :cond_c
    move-object/from16 v7, v18

    move-object/from16 v18, v11

    goto :goto_4

    :cond_d
    move/from16 v1, p4

    move-object/from16 v7, v18

    move-object/from16 v18, v11

    :goto_4
    const-string v11, "share-target"

    move/from16 p4, v5

    const/4 v5, 0x3

    if-ne v2, v5, :cond_12

    const/4 v5, 0x2

    if-ne v1, v5, :cond_12

    :try_start_7
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    if-nez v3, :cond_e

    nop

    :goto_5
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move/from16 v5, p4

    move-object/from16 v11, v18

    goto/16 :goto_0

    :cond_e
    move-object v5, v3

    const/4 v3, 0x0

    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move/from16 v21, v13

    move-object/from16 v13, p5

    goto :goto_6

    :cond_f
    move-object/from16 v19, v3

    new-instance v3, Lcom/android/server/pm/ShareTargetInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v20, v6

    :try_start_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move/from16 v21, v13

    iget-object v13, v5, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    move-object/from16 v22, v5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v3, v6, v13, v5}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v13, p5

    :try_start_9
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v22, v4

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v13, p5

    goto/16 :goto_9

    :cond_10
    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move/from16 v21, v13

    move-object/from16 v13, p5

    :goto_6
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move/from16 v5, p4

    move-object/from16 v11, v18

    move-object/from16 v3, v19

    move-object/from16 v6, v20

    move/from16 v13, v21

    goto/16 :goto_0

    :cond_11
    move-object/from16 v20, v6

    move/from16 v21, v13

    move-object/from16 v13, p5

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v13, p5

    move-object/from16 v20, v6

    move-object/from16 v2, p0

    move-object v1, v9

    goto/16 :goto_10

    :cond_12
    move-object/from16 v20, v6

    move/from16 v21, v13

    move-object/from16 v13, p5

    :goto_7
    move-object/from16 v19, v3

    move-object/from16 v22, v4

    :goto_8
    const/4 v3, 0x2

    if-eq v2, v3, :cond_13

    move-object/from16 v2, p0

    move/from16 v24, p4

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    goto/16 :goto_e

    :cond_13
    const/4 v3, 0x1

    if-ne v1, v3, :cond_14

    const-string v3, "shortcuts"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_14

    move-object/from16 v2, p0

    move/from16 v24, p4

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    :goto_9
    move-object/from16 v2, p0

    move-object v1, v9

    move-object/from16 v6, v20

    goto/16 :goto_10

    :cond_14
    const/4 v3, 0x2

    if-ne v1, v3, :cond_18

    :try_start_a
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v3, :cond_18

    move v8, v1

    move-object/from16 v1, p0

    move/from16 v23, v2

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, v18

    move/from16 v24, p4

    move/from16 v5, p3

    move-object/from16 v11, v20

    move/from16 v6, v16

    :try_start_b
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_15

    move-object/from16 v2, p0

    move-object v6, v11

    move-object/from16 v5, v18

    goto/16 :goto_e

    :cond_15
    if-eqz v11, :cond_17

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_a
    if-ltz v2, :cond_17

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v2, p0

    move-object v6, v11

    move-object/from16 v5, v18

    goto/16 :goto_e

    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_17
    move-object v0, v1

    const/4 v4, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object v6, v11

    move-object/from16 v11, v18

    move-object/from16 v3, v19

    move/from16 v13, v21

    move/from16 v5, v24

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v9

    move-object v6, v11

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    move-object/from16 v6, v20

    move-object/from16 v2, p0

    move-object v1, v9

    goto/16 :goto_10

    :cond_18
    move/from16 v24, p4

    move v8, v1

    move/from16 v23, v2

    move-object/from16 v6, v20

    const/4 v1, 0x2

    if-ne v8, v1, :cond_1a

    :try_start_c
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v1, :cond_1a

    move-object/from16 v2, p0

    :try_start_d
    invoke-static {v2, v12}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v1

    if-nez v1, :cond_19

    move-object/from16 v5, v18

    goto/16 :goto_e

    :cond_19
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object v7, v2

    move-object/from16 v11, v18

    move/from16 v13, v21

    move/from16 v5, v24

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v9

    goto/16 :goto_10

    :cond_1a
    move-object/from16 v2, p0

    const/4 v1, 0x3

    if-ne v8, v1, :cond_1e

    const-string v1, "intent"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v5, v18

    goto :goto_b

    :cond_1b
    iget-object v1, v2, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v9, v12}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut intent action must be provided. activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object v7, v2

    move-object v11, v5

    move-object/from16 v3, v19

    move/from16 v13, v21

    move-object/from16 v4, v22

    move/from16 v5, v24

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v5, v18

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_1d
    move-object/from16 v5, v18

    :goto_b
    const-string v1, "Ignoring excessive intent tag."

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto/16 :goto_e

    :catchall_7
    move-exception v0

    move-object v1, v9

    goto/16 :goto_10

    :cond_1e
    move-object/from16 v5, v18

    const-string v1, "Empty category found. activity="

    const/4 v3, 0x3

    if-ne v8, v3, :cond_22

    :try_start_e
    const-string v3, "categories"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1f

    goto/16 :goto_e

    :cond_1f
    invoke-static {v2, v12}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_20
    if-nez v22, :cond_21

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v1

    goto :goto_c

    :cond_21
    move-object/from16 v4, v22

    :goto_c
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object v7, v2

    move-object v11, v5

    move-object/from16 v3, v19

    move/from16 v13, v21

    move/from16 v5, v24

    goto/16 :goto_0

    :cond_22
    const/4 v3, 0x3

    if-ne v8, v3, :cond_26

    const-string v3, "category"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    if-nez v19, :cond_23

    goto/16 :goto_e

    :cond_23
    invoke-static {v2, v12}, Lcom/android/server/pm/ShortcutParser;->parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_24
    if-nez v22, :cond_25

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v1

    goto :goto_d

    :cond_25
    move-object/from16 v4, v22

    :goto_d
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object v7, v2

    move-object v11, v5

    move-object/from16 v3, v19

    move/from16 v13, v21

    move/from16 v5, v24

    goto/16 :goto_0

    :cond_26
    const/4 v1, 0x3

    if-ne v8, v1, :cond_29

    const-string v1, "data"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    if-nez v19, :cond_27

    goto :goto_e

    :cond_27
    invoke-static {v2, v12}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v1

    if-nez v1, :cond_28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data tag found. activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_28
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_29
    const-string v1, "Invalid tag \'%s\' found at depth %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    nop

    :cond_2a
    :goto_e
    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object v7, v2

    move-object v11, v5

    move-object/from16 v3, v19

    move/from16 v13, v21

    move-object/from16 v4, v22

    move/from16 v5, v24

    goto/16 :goto_0

    :cond_2b
    move/from16 v23, v2

    move/from16 v24, v5

    move-object v2, v7

    move-object v5, v11

    move/from16 v21, v13

    move-object/from16 v13, p5

    :goto_f
    if-eqz v9, :cond_2c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2c
    return-object v6

    :catchall_8
    move-exception v0

    move-object/from16 v13, p5

    move-object v2, v7

    move-object v1, v9

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object/from16 v13, p5

    move-object v2, v7

    move-object/from16 v6, p4

    move-object v1, v9

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object/from16 v13, p5

    move-object v2, v7

    move-object/from16 v6, p4

    :goto_10
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2d
    throw v0
.end method
