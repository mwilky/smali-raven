.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyExchangeCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;->this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;

    return-void
.end method


# virtual methods
.method public onValues(BLvendor/google/wireless_charger/V1_0/KeyExchangeResponse;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    iget-byte v0, p2, Lvendor/google/wireless_charger/V1_0/KeyExchangeResponse;->dockId:B

    iget-object p2, p2, Lvendor/google/wireless_charger/V1_0/KeyExchangeResponse;->dockPublicKey:Ljava/util/ArrayList;

    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;->onCallback(IBLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;->onCallback(IBLjava/util/ArrayList;)V

    :goto_0
    return-void
.end method
