.class Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SmartAutoRotatePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/settings/display/DeviceStateAutoRotationHelper;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
