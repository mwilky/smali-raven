.class public Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;
.super Ljava/lang/Object;
.source "DomainVerificationLegacySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
    }
.end annotation


# static fields
.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field public static final TAG_DOMAIN_VERIFICATIONS_LEGACY:Ljava/lang/String; = "domain-verifications-legacy"

.field public static final TAG_USER_STATE:Ljava/lang/String; = "user-state"

.field public static final TAG_USER_STATES:Ljava/lang/String; = "user-states"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    return-void
.end method

.method private getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    invoke-direct {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private readUserState(Lcom/android/server/pm/SettingsXml$ReadSection;Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;)V
    .locals 2

    const-string v0, "userId"

    invoke-interface {p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "state"

    invoke-interface {p1, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->addUserState(II)V

    return-void
.end method

.method private readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;)V
    .locals 6

    const-string v0, "packageName"

    invoke-interface {p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "user-state"

    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$ChildSection;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readUserState(Lcom/android/server/pm/SettingsXml$ReadSection;Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;)V

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->addUserState(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public add(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->setInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserState(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserState(I)I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
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

.method public getUserStates(Ljava/lang/String;)Landroid/util/SparseIntArray;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserStates()Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
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

.method public readSettings(Landroid/util/TypedXmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/pm/SettingsXml;->parser(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user-states"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->isAttached()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->markAttached()V

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
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

.method public writeSettings(Landroid/util/TypedXmlSerializer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/SettingsXml;->serializer(Landroid/util/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object v2

    :try_start_0
    const-string v0, "domain-verifications-legacy"

    invoke-virtual {v2, v0}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v3, v0

    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v5, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_4

    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserStates()Landroid/util/SparseIntArray;

    move-result-object v0

    move-object v8, v0

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const-string v0, "user-states"

    invoke-virtual {v2, v0}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    const-string v10, "packageName"

    invoke-interface {v0, v10, v9}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v10, v0

    :try_start_3
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_1

    invoke-virtual {v8, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v8, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    const-string v14, "user-state"

    invoke-interface {v10, v14}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v14

    const-string v15, "userId"

    invoke-interface {v14, v15, v12}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v14

    const-string v15, "state"

    invoke-interface {v14, v15, v13}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    :try_start_4
    invoke-interface {v10}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v0

    if-eqz v10, :cond_3

    :try_start_5
    invoke-interface {v10}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v11

    :cond_4
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_5

    :try_start_7
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_7

    :try_start_a
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_b
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_8

    :try_start_c
    invoke-virtual {v2}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v3
.end method
