.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyExchangeCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;

    return-void
.end method


# virtual methods
.method public final onValues(BLvendor/google/wireless_charger/V1_0/KeyExchangeResponse;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    iget-byte v0, p2, Lvendor/google/wireless_charger/V1_0/KeyExchangeResponse;->dockId:B

    iget-object p2, p2, Lvendor/google/wireless_charger/V1_0/KeyExchangeResponse;->dockPublicKey:Ljava/util/ArrayList;

    check-cast p0, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;->onCallback(IBLjava/util/ArrayList;)V

    return-void
.end method
