.class public final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$getContext$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->physical_charger_port_location_normalized_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$setNormalizedPortPosX$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$getContext$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->physical_charger_port_location_normalized_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$setNormalizedPortPosY$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;F)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$updateRippleColor(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$updateRippleColor(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$updateRippleColor(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    return-void
.end method
