.class public final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;->$batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZ)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$getRippleEnabled$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;->$batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPluggedInWireless()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$getPluggedIn$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$setPluggedIn$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->startRippleWithDebounce$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    :cond_2
    :goto_0
    return-void
.end method
