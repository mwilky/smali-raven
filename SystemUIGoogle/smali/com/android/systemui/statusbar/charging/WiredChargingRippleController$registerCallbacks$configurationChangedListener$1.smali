.class public final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$configurationChangedListener$1;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070644

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070645

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->updateRippleColor()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$configurationChangedListener$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->updateRippleColor()V

    return-void
.end method
