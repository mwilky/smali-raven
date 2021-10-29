.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_0/IWirelessCharger$getInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GetInformationCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;->this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;

    return-void
.end method

.method private convertDockInfo(Lvendor/google/wireless_charger/V1_0/DockInfo;)Lcom/google/android/systemui/dreamliner/DockInfo;
    .locals 3

    new-instance p0, Lcom/google/android/systemui/dreamliner/DockInfo;

    iget-object v0, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    iget-object v1, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    iget-object v2, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    iget-byte p1, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/systemui/dreamliner/DockInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public onValues(BLvendor/google/wireless_charger/V1_0/DockInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;->convertDockInfo(Lvendor/google/wireless_charger/V1_0/DockInfo;)Lcom/google/android/systemui/dreamliner/DockInfo;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;->onCallback(ILcom/google/android/systemui/dreamliner/DockInfo;)V

    return-void
.end method
