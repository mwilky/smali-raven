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
.field private final context:Landroid/content/Context;

.field private debounceLevel:I

.field private lastTriggerTime:Ljava/lang/Long;

.field private normalizedPortPosX:F

.field private normalizedPortPosY:F

.field private pluggedIn:Ljava/lang/Boolean;

.field private final rippleEnabled:Z

.field private rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    const-string v0, "commandRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batteryController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemClock"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p8, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p4}, Lcom/android/systemui/flags/FeatureFlags;->isChargingRippleEnabled()Z

    move-result p4

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    const-string p4, "persist.debug.suppress-charging-ripple"

    invoke-static {p4, p6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p6

    :goto_0
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleEnabled:Z

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p7, Lcom/android/systemui/R$dimen;->physical_charger_port_location_normalized_x:I

    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p7, Lcom/android/systemui/R$dimen;->physical_charger_port_location_normalized_y:I

    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    new-instance p4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 p7, -0x1

    iput p7, p4, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p7, p4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p7, 0x3

    iput p7, p4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p7, -0x3

    iput p7, p4, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p7, 0x7d6

    iput p7, p4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p4, p6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p6, "Wired Charging Animation"

    invoke-virtual {p4, p6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p6, 0x18

    iput p6, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p4}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    sget-object p6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p4, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p4, Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p6}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPluggedIn()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->pluggedIn:Ljava/lang/Boolean;

    new-instance p4, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;

    invoke-direct {p4, p2, p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$batteryStateChangeCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    invoke-interface {p2, p4}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$configurationChangedListener$1;-><init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    invoke-interface {p3, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$1;-><init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    const-string p3, "charging-ripple"

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->updateRippleColor()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPluggedIn$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->pluggedIn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$getWindowManager$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static final synthetic access$layoutRipple(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->layoutRipple()V

    return-void
.end method

.method public static final synthetic access$setNormalizedPortPosX$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    return-void
.end method

.method public static final synthetic access$setNormalizedPortPosY$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    return-void
.end method

.method public static final synthetic access$setPluggedIn$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->pluggedIn:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$updateRippleColor(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->updateRippleColor()V

    return-void
.end method

.method public static synthetic getRippleView$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final layoutRipple()V
    .locals 6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-static {v1, v0}, Ljava/lang/Integer;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->setRadius(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    iget v4, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    mul-float/2addr v1, v4

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    mul-float/2addr v0, p0

    invoke-direct {v3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    mul-float/2addr v0, p0

    invoke-direct {v3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    sub-float v5, v4, v5

    mul-float/2addr v1, v5

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    sub-float/2addr v4, p0

    mul-float/2addr v0, v4

    invoke-direct {v3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    iget v5, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    mul-float/2addr v1, v5

    int-to-float v0, v0

    int-to-float v4, v4

    iget p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    sub-float/2addr v4, p0

    mul-float/2addr v0, v4

    invoke-direct {v3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->setOrigin(Landroid/graphics/PointF;)V

    return-void
.end method

.method private final updateRippleColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final getRippleView()Lcom/android/systemui/statusbar/charging/ChargingRippleView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    return-object p0
.end method

.method public final startRipple()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->getRippleInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

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

.method public final startRippleWithDebounce$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->lastTriggerTime:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-double v2, v2

    const/16 v4, 0x7d0

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget v8, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->startRipple()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->lastTriggerTime:Ljava/lang/Long;

    return-void
.end method
