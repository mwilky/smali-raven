.class public Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.super Ljava/lang/Object;
.source "DomainVerificationCollector.java"


# static fields
.field private static final ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

.field private static final MAX_DOMAINS_BYTE_SIZE:I = 0x100000

.field public static final RESTRICT_DOMAINS:J = 0xa74866dL


# instance fields
.field private final mDomainMatcher:Ljava/util/regex/Matcher;

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\*\\.)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    sget-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method private byteSizeOf(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZ)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v6, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-object v0
.end method

.method private collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0xa74866d

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsLegacy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    if-eqz v3, :cond_8

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v7}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_7

    if-eqz v3, :cond_7

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getAutoVerify()Z

    move-result v12

    if-nez v12, :cond_0

    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    goto/16 :goto_4

    :cond_0
    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v11, v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->handlesWebUris(Z)Z

    move-result v12

    if-nez v12, :cond_1

    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    goto :goto_4

    :cond_1
    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countDataAuthorities()I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v11, v13}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v15

    move/from16 v1, p3

    if-ne v15, v1, :cond_3

    invoke-direct {v0, v14}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    const/high16 v15, 0x100000

    if-ge v2, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    move v3, v15

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    invoke-interface {v0, v15, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_4

    return-object v16

    :cond_3
    move-object/from16 v15, p4

    move-object/from16 v0, p5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_2

    :cond_5
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    goto :goto_4

    :cond_6
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_1

    :cond_7
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto/16 :goto_0

    :cond_8
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    const/4 v6, 0x0

    return-object v6
.end method

.method private collectDomainsLegacy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    move-object/from16 v6, p0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v6, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    if-nez v2, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    if-nez v2, :cond_1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->needsVerification()Z

    move-result v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return-object v3

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_a

    if-eqz v5, :cond_a

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_9

    if-eqz v5, :cond_9

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->handlesWebUris(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countDataAuthorities()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_7

    invoke-virtual {v12, v15}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v17, v0

    move/from16 v0, p3

    if-ne v3, v0, :cond_5

    invoke-direct {v6, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v4, v3

    const/high16 v3, 0x100000

    if-ge v4, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    move v5, v3

    move-object/from16 v3, p4

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v13}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_6

    return-object v18

    :cond_5
    move-object/from16 v3, p4

    move-object/from16 v0, p5

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    goto :goto_6

    :cond_8
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    const/4 v3, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    const/4 v7, 0x0

    return-object v7
.end method

.method private isValidHost(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$containsAutoVerifyDomain$2(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$containsWebDomain$1(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/util/ArraySet;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public collectInvalidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public containsAutoVerifyDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 6

    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsWebDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 6

    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
