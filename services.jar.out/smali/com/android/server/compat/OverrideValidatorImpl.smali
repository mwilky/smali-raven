.class public Lcom/android/server/compat/OverrideValidatorImpl;
.super Lcom/android/internal/compat/IOverrideValidator$Stub;
.source "OverrideValidatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field private mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field private mContext:Landroid/content/Context;

.field private mForceNonDebuggableFinalBuild:Z


# direct methods
.method constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/compat/IOverrideValidator$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    iput-object p2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/compat/OverrideValidatorImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/compat/OverrideValidatorImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getOverrideAllowedStateInternal(JLjava/lang/String;Z)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/compat/CompatConfig;->isLoggingOnly(J)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v5, 0x5

    invoke-direct {v0, v5, v4, v4}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isDebuggableBuild()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    move v7, v0

    iget-object v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v5

    :goto_2
    move v8, v0

    iget-object v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/compat/CompatConfig;->maxTargetSdkForChangeIdOptIn(J)I

    move-result v9

    iget-object v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/compat/CompatConfig;->isDisabled(J)Z

    move-result v10

    if-eqz v7, :cond_4

    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v0, v6, v4, v4}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v0

    :cond_4
    iget-object v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result v0

    if-lt v9, v0, :cond_5

    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v5, 0x6

    invoke-direct {v0, v5, v4, v9}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v0

    :cond_5
    iget-object v0, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-eqz v11, :cond_d

    const/high16 v0, 0x400000

    move-object/from16 v12, p3

    :try_start_0
    invoke-virtual {v11, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v13, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/compat/CompatConfig;->isOverridable(J)Z

    move-result v13

    if-eqz v13, :cond_7

    if-nez p4, :cond_6

    iget-object v13, v1, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    :cond_6
    new-instance v5, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v5, v6, v4, v4}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v5

    :cond_7
    iget v13, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v15, 0x2

    and-int/2addr v14, v15

    if-nez v14, :cond_8

    new-instance v6, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v6, v5, v4, v4}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v6

    :cond_8
    if-nez v8, :cond_9

    new-instance v4, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v4, v6, v13, v9}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v4

    :cond_9
    if-ne v9, v4, :cond_a

    if-nez v10, :cond_a

    new-instance v4, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v4, v15, v13, v9}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v4

    :cond_a
    if-nez v10, :cond_c

    if-gt v13, v9, :cond_b

    goto :goto_3

    :cond_b
    new-instance v4, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v13, v9}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v4

    :cond_c
    :goto_3
    new-instance v4, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v4, v6, v13, v9}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v4

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    new-instance v5, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v4, v4}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v5

    :cond_d
    move-object/from16 v12, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "No PackageManager!"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method forceNonDebuggableFinalForTest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return-void
.end method

.method public getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(JLjava/lang/String;Z)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v0

    return-object v0
.end method

.method getOverrideAllowedStateForRecheck(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(JLjava/lang/String;Z)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v0

    return-object v0
.end method

.method registerContentObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_non_debuggable_final_build_for_compat"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;-><init>(Lcom/android/server/compat/OverrideValidatorImpl;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
