.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;
.super Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback$Stub;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WirelessChargerInfoCallback"
.end annotation


# instance fields
.field public final mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V
    .locals 0

    invoke-direct {p0}, Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;

    return-void
.end method
