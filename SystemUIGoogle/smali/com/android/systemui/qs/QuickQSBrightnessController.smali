.class public final Lcom/android/systemui/qs/QuickQSBrightnessController;
.super Ljava/lang/Object;
.source "QuickQSBrightnessController.kt"

# interfaces
.implements Lcom/android/systemui/settings/brightness/MirroredBrightnessController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickQSBrightnessController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickQSBrightnessController.kt\ncom/android/systemui/qs/QuickQSBrightnessController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation


# instance fields
.field private brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private final brightnessControllerFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/android/systemui/settings/brightness/BrightnessController;",
            ">;"
        }
    .end annotation
.end field

.field private isListening:Z

.field private mirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/qs/QuickQSPanel;)V
    .locals 1

    const-string v0, "brightnessControllerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brightnessSliderControllerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickQSPanel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/systemui/qs/QuickQSBrightnessController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickQSBrightnessController;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/android/systemui/settings/brightness/BrightnessController;",
            ">;)V"
        }
    .end annotation

    const-string v0, "brightnessControllerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessControllerFactory:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final hideBrightnessSlider()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->hideSlider()V

    :goto_0
    return-void
.end method

.method private final showBrightnessSlider()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessControllerFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessController;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->mirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->setMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->isListening:Z

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->showSlider()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final checkRestrictionAndSetEnabled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    :goto_0
    return-void
.end method

.method public final init(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSBrightnessController;->refreshVisibility(Z)V

    return-void
.end method

.method public final refreshVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSBrightnessController;->showBrightnessSlider()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSBrightnessController;->hideBrightnessSlider()V

    :goto_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->isListening:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz p1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->isListening:Z

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->isListening:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->mirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->setMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :goto_0
    return-void
.end method
