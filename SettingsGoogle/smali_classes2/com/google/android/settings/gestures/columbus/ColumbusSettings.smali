.class public Lcom/google/android/settings/gestures/columbus/ColumbusSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColumbusSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/settings/gestures/columbus/ColumbusSettings$1;

    const v1, 0x7f150049

    invoke-direct {v0, v1}, Lcom/google/android/settings/gestures/columbus/ColumbusSettings$1;-><init>(I)V

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ColumbusSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x738

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150049

    return p0
.end method
