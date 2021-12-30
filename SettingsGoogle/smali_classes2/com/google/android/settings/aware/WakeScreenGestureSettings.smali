.class public Lcom/google/android/settings/aware/WakeScreenGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WakeScreenGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/settings/aware/WakeScreenGestureSettings$1;

    const v1, 0x7f150108

    invoke-direct {v0, v1}, Lcom/google/android/settings/aware/WakeScreenGestureSettings$1;-><init>(I)V

    sput-object v0, Lcom/google/android/settings/aware/WakeScreenGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

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

    const-string p0, "WakeScreenGestureSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x622

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150108

    return p0
.end method
