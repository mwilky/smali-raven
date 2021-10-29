.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFeaturesCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_3/IWirelessCharger$getFeaturesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GetFeaturesCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFeaturesCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;

    return-void
.end method


# virtual methods
.method public onValues(BJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFeaturesCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;->onCallback(IJ)V

    return-void
.end method
