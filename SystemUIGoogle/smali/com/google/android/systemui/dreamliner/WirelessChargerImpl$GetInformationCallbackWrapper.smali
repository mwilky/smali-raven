.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GetInformationCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;

    return-void
.end method


# virtual methods
.method public final onValues(BLvendor/google/wireless_charger/V1_0/DockInfo;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockInfo;

    iget-object v1, p2, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    iget-object v2, p2, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    iget-object v3, p2, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    iget-byte p2, p2, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result p2

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/google/android/systemui/dreamliner/DockInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;->onCallback(ILcom/google/android/systemui/dreamliner/DockInfo;)V

    return-void
.end method
