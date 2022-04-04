.class public Lcom/android/settings/connecteddevice/NfcAndPaymentFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NfcAndPaymentFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/connecteddevice/NfcAndPaymentFragment$1;

    const v1, 0x7f1500a4

    invoke-direct {v0, v1}, Lcom/android/settings/connecteddevice/NfcAndPaymentFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/connecteddevice/NfcAndPaymentFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040a04

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NfcAndPaymentFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x724

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500a4

    return p0
.end method
