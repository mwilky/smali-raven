.class Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;
.super Ljava/lang/Object;
.source "ReverseWirelessCharger.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_2/IWirelessCharger$getRtxInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalRtxInformationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;->this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(BLvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;->this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-static {p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->access$400(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    return-void
.end method
