.class Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;
.super Ljava/lang/Object;
.source "ReverseWirelessCharger.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalIsDockPresentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;->this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZBBZI)V
    .locals 8

    invoke-static {}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalIsDockPresentCallback::onValues(): docked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isGetI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseWirelessCharger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;->this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->access$300(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;ZBBZI)V

    return-void
.end method
