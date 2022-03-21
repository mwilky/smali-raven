.class Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;
.super Ljava/lang/Object;
.source "AccessibilitySearchFeatureProviderGoogleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchIndexableRawHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$HC23ga66YqE40mBL7BfstUgvHoY(Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;Landroid/content/pm/ActivityInfo;Ljava/util/List;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->lambda$buildSupportedActivitySearchIndex$3(Landroid/content/pm/ActivityInfo;Ljava/util/List;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gah_z3aD0yPxkNHkUuJVk7KBs5E(Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;Landroid/content/pm/ResolveInfo;Ljava/util/List;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->lambda$buildSupportedServiceSearchIndex$1(Landroid/content/pm/ResolveInfo;Ljava/util/List;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPiFvvY-Qm786zNQSTw_S8WOVTA(Landroid/content/ComponentName;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->lambda$buildSupportedServiceSearchIndex$0(Landroid/content/ComponentName;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vZ9Gx2WZA85BgNN8guoaGpHRyY8(Landroid/content/ComponentName;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->lambda$buildSupportedActivitySearchIndex$2(Landroid/content/ComponentName;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getSearchIndexableRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/search/SearchIndexableRaw;
    .locals 1

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object p0, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic lambda$buildSupportedActivitySearchIndex$2(Landroid/content/ComponentName;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$buildSupportedActivitySearchIndex$3(Landroid/content/pm/ActivityInfo;Ljava/util/List;Ljava/util/Map$Entry;)V
    .locals 2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p3}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->getSearchIndexableRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/search/SearchIndexableRaw;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$buildSupportedServiceSearchIndex$0(Landroid/content/ComponentName;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$buildSupportedServiceSearchIndex$1(Landroid/content/pm/ResolveInfo;Ljava/util/List;Ljava/util/Map$Entry;)V
    .locals 2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p3}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->getSearchIndexableRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/search/SearchIndexableRaw;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public buildSupportedActivitySearchIndex(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.accessibility.soundamplifier"

    const-string v2, "com.google.android.accessibility.soundamplifier.ui.SoundAmplifierSettingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v1, "com.google.audio.hearing.visualization.accessibility.scribe"

    const-string v3, "com.google.audio.hearing.visualization.accessibility.scribe.MainActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string v3, "com.google.audio.hearing.visualization.accessibility.dolphin.ui.visualizer.TimelineActivity"

    invoke-direct {v4, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f040b36

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f040b21

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f040b37

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v5, v1}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;Landroid/content/pm/ActivityInfo;Ljava/util/List;)V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public buildSupportedServiceSearchIndex(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string v3, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-direct {v4, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-string v3, "com.android.switchaccess.SwitchAccessService"

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.accessibility.voiceaccess"

    const-string v3, "com.google.android.apps.accessibility.voiceaccess.JustSpeakService"

    invoke-direct {v8, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f040b42

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f040ad8

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f040b34

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f040b40

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->mContext:Landroid/content/Context;

    const v10, 0x7f040b4b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda2;

    invoke-direct {v7, v6}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4, v1}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
