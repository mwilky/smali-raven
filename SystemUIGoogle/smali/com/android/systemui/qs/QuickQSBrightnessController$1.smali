.class final Lcom/android/systemui/qs/QuickQSBrightnessController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickQSBrightnessController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickQSBrightnessController;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/qs/QuickQSPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/settings/brightness/BrightnessController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $brightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

.field final synthetic $brightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field final synthetic $quickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$brightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iput-object p2, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$quickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iput-object p3, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$brightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/settings/brightness/BrightnessController;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$brightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$quickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$quickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$quickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setBrightnessView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->$brightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object p0

    const-string v0, "brightnessControllerFactory.create(slider)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSBrightnessController$1;->invoke()Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object p0

    return-object p0
.end method
