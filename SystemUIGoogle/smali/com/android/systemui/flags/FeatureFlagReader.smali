.class public Lcom/android/systemui/flags/FeatureFlagReader;
.super Ljava/lang/Object;
.source "FeatureFlagReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;
    }
.end annotation


# instance fields
.field private final mAreFlagsOverrideable:Z

.field private final mCachedFlags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private final mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/wrapper/BuildInfo;Lcom/android/systemui/flags/SystemPropertiesHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mCachedFlags:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/wrapper/BuildInfo;->isDebuggable()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/android/systemui/R$bool;->are_flags_overrideable:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mAreFlagsOverrideable:Z

    return-void
.end method

.method private flagNameToStorageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "persist.systemui.flag_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private resourceIdToFlagName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "flag_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mCachedFlags:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mCachedFlags:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/flags/FeatureFlagReader;->resourceIdToFlagName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mAreFlagsOverrideable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    invoke-direct {p0, v1}, Lcom/android/systemui/flags/FeatureFlagReader;->flagNameToStorageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/flags/SystemPropertiesHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    new-instance v3, Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;-><init>(Ljava/lang/String;ZLcom/android/systemui/flags/FeatureFlagReader$1;)V

    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mCachedFlags:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v3

    :cond_1
    iget-boolean p0, v1, Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;->value:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
