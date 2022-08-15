.class public final Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "AppBatteryExemptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryExemptionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppBatteryExemptionPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy<",
        "Lcom/android/server/am/AppBatteryExemptionTracker;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3ACdwezsxQWPBypk6Bi9QJRptRw(Lcom/android/server/am/AppBatteryExemptionTracker;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;->lambda$onMaxTrackingDurationChanged$0(Lcom/android/server/am/AppBatteryExemptionTracker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryExemptionTracker;)V
    .locals 9

    iget-object v0, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v7, v0

    const-string v4, "bg_battery_exemption_enabled"

    const/4 v5, 0x1

    const-string v6, "bg_current_drain_window"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    return-void
.end method

.method public static synthetic lambda$onMaxTrackingDurationChanged$0(Lcom/android/server/am/AppBatteryExemptionTracker;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/AppBatteryExemptionTracker;->-$$Nest$mtrimDurations(Lcom/android/server/am/AppBatteryExemptionTracker;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP BATTERY EXEMPTION TRACKER POLICY SETTINGS:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public onMaxTrackingDurationChanged(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    move-object p1, p0

    check-cast p1, Lcom/android/server/am/AppBatteryExemptionTracker;

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    check-cast p0, Lcom/android/server/am/AppBatteryExemptionTracker;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppBatteryExemptionTracker;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrackerEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryExemptionTracker;

    invoke-static {p0, p1}, Lcom/android/server/am/AppBatteryExemptionTracker;->-$$Nest$monTrackerEnabled(Lcom/android/server/am/AppBatteryExemptionTracker;Z)V

    return-void
.end method
