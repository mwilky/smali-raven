.class public Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "DomainVerificationPersistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    }
.end annotation


# static fields
.field public static final ATTR_ALLOW_LINK_HANDLING:Ljava/lang/String; = "allowLinkHandling"

.field private static final ATTR_HAS_AUTO_VERIFY_DOMAINS:Ljava/lang/String; = "hasAutoVerifyDomains"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "DomainVerificationPersistence"

.field public static final TAG_ACTIVE:Ljava/lang/String; = "active"

.field public static final TAG_DOMAIN:Ljava/lang/String; = "domain"

.field public static final TAG_DOMAIN_VERIFICATIONS:Ljava/lang/String; = "domain-verifications"

.field public static final TAG_ENABLED_HOSTS:Ljava/lang/String; = "enabled-hosts"

.field public static final TAG_HOST:Ljava/lang/String; = "host"

.field public static final TAG_PACKAGE_STATE:Ljava/lang/String; = "package-state"

.field public static final TAG_RESTORED:Ljava/lang/String; = "restored"

.field private static final TAG_STATE:Ljava/lang/String; = "state"

.field public static final TAG_USER_STATE:Ljava/lang/String; = "user-state"

.field private static final TAG_USER_STATES:Ljava/lang/String; = "user-states"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "packageName"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "hasAutoVerifyDomains"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v2, "signature"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v12

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v13, v2

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v14, v2

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Lcom/android/server/pm/SettingsXml$ChildSection;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v4, "state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "user-states"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v15, v14}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v15, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    nop

    :goto_2
    goto :goto_0

    :cond_2
    new-instance v16, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object/from16 v2, v16

    move-object v3, v1

    move-object v4, v12

    move v5, v10

    move-object v6, v13

    move-object v7, v14

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object v16

    :cond_3
    :goto_3
    const/4 v2, 0x0

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x5df07dbc -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .locals 5

    const-string v0, "userId"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "allowLinkHandling"

    invoke-interface {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v3

    :goto_0
    const-string v4, "enabled-hosts"

    invoke-interface {v3, v4}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {v4, v0, v2, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    return-object v4
.end method

.method private static readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    :goto_0
    const-string v1, "domain"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "state"

    invoke-interface {v0, v3, v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    :goto_0
    const-string v1, "host"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "name"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->parser(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "restored"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    const-string v5, "active"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    nop

    :goto_2
    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d080fa -> :sswitch_1
        -0x1410806a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    :goto_0
    const-string v1, "package-state"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private static readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    :goto_0
    const-string v1, "user-state"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-static {p0, v1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object v1

    :cond_1
    nop

    const-string v2, "package-state"

    invoke-interface {p0, v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    const-string v3, "packageName"

    invoke-interface {v2, v3, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v2, v4, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v3

    const-string v4, "hasAutoVerifyDomains"

    invoke-interface {v2, v4, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    const-string v3, "signature"

    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {p0, p2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
.end method

.method private static writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    const-string v4, "domain"

    invoke-interface {v1, v4}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method public static writeToXml(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILjava/util/function/Function;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->serializer(Landroid/util/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object v0

    :try_start_0
    const-string v1, "domain-verifications"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "active"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {v5, v2, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    :try_start_3
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2
    const-string v5, "restored"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v5, v6, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_3

    :try_start_5
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    :try_start_7
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_2
    move-exception v6

    if-eqz v5, :cond_7

    :try_start_9
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v7

    :try_start_a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_8

    :try_start_b
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v3

    :try_start_c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v1

    if-eqz v0, :cond_9

    :try_start_d
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw v1
.end method

.method private static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    const-string v0, "user-state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v1

    const-string v2, "allowLinkHandling"

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "enabled-hosts"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    const-string v5, "host"

    invoke-interface {v2, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_3
    return-void

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v1
.end method

.method private static writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "user-states"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-static {v1, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v2, :cond_3

    invoke-static {v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2
.end method
