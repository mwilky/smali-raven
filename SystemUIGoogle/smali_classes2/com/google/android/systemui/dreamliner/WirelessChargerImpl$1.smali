.class Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;->this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;->this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-static {p0, p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->access$000(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;)V

    return-void
.end method
