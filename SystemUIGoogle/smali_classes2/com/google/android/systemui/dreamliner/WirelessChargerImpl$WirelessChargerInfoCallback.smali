.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;
.super Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback$Stub;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WirelessChargerInfoCallback"
.end annotation


# instance fields
.field private final mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-direct {p0}, Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;

    return-void
.end method

.method private convertAlignInfo(Lvendor/google/wireless_charger/V1_1/AlignInfo;)Lcom/google/android/systemui/dreamliner/DockAlignInfo;
    .locals 1

    new-instance p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;

    iget-byte v0, p1, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignState:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    iget-byte p1, p1, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignPct:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/dreamliner/DockAlignInfo;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public alignInfoChanged(Lvendor/google/wireless_charger/V1_1/AlignInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->convertAlignInfo(Lvendor/google/wireless_charger/V1_1/AlignInfo;)Lcom/google/android/systemui/dreamliner/DockAlignInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;->onAlignInfoChanged(Lcom/google/android/systemui/dreamliner/DockAlignInfo;)V

    return-void
.end method
