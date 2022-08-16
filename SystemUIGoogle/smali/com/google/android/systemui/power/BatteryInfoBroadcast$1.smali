.class public final Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;
.super Landroid/database/ContentObserver;
.source "BatteryInfoBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/power/BatteryInfoBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;->this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryInfoBroadcast"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;->this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    const-string p1, "PNW.batteryStatusChanged"

    invoke-static {p1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
