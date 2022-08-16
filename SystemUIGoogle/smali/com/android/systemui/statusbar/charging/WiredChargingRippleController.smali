.class public final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$ChargingRippleCommand;,
        Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;
    }
.end annotation


# instance fields
.field public final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public debounceLevel:I

.field public lastTriggerTime:Ljava/lang/Long;

.field public normalizedPortPosX:F

.field public normalizedPortPosY:F

.field public pluggedIn:Ljava/lang/Boolean;

.field public rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p8, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/flags/Flags;->CHARGING_RIPPLE:Lcom/android/systemui/flags/ResourceBooleanFlag;

    invoke-interface {p4, p3}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo p3, "persist.debug.suppress-charging-ripple"

    invoke-static {p3, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    :cond_0
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p6, 0x7f070644

    invoke-virtual {p3, p6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p6, 0x7f070645

    invoke-virtual {p3, p6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 p6, -0x1

    iput p6, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p6, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p6, 0x3

    iput p6, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p6, -0x3

    iput p6, p3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p6, 0x7d6

    iput p6, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p4, "Wired Charging Animation"

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p4, 0x18

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p3, Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    const/4 p4, 0x0

    invoke-direct {p3, p5, p4}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPluggedIn()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->pluggedIn:Ljava/lang/Boolean;

    new-instance p2, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$1;-><init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    const-string p3, "charging-ripple"

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->updateRippleColor()V

    return-void
.end method

.method public static synthetic getRippleView$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public final startRipple()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    new-instance v1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;-><init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;->CHARGING_RIPPLE_PLAYED:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateRippleColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    return-void
.end method
