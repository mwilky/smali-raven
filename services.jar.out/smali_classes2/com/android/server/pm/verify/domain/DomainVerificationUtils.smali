.class public final Lcom/android/server/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;
.source "DomainVerificationUtils.java"


# static fields
.field private static final sCachedMatcher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/regex/Matcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMockAppInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return-object v0
.end method

.method static isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->buildMockAppInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static isDomainVerificationIntent(Landroid/content/Intent;I)Z
    .locals 8

    invoke-virtual {p0}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Matcher;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    return v1

    :cond_3
    const-string v5, "android.intent.category.BROWSABLE"

    const/4 v6, 0x1

    const-string v7, "android.intent.category.DEFAULT"

    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v6

    goto :goto_0

    :cond_4
    nop

    :goto_0
    return v1

    :cond_5
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_6

    move v1, v6

    :cond_6
    if-nez v3, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method static synthetic lambda$static$0()Ljava/util/regex/Matcher;
    .locals 2

    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method static throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
