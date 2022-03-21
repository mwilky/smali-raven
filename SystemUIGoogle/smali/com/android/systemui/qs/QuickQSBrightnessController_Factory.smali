.class public final Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;
.super Ljava/lang/Object;
.source "QuickQSBrightnessController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/QuickQSBrightnessController;",
        ">;"
    }
.end annotation


# instance fields
.field private final brightnessControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final brightnessSliderControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final quickQSPanelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->brightnessControllerFactoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->brightnessSliderControllerFactoryProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->quickQSPanelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanel;",
            ">;)",
            "Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/qs/QuickQSPanel;)Lcom/android/systemui/qs/QuickQSBrightnessController;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QuickQSBrightnessController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/QuickQSBrightnessController;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/qs/QuickQSPanel;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/QuickQSBrightnessController;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->brightnessControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->brightnessSliderControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->quickQSPanelProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->newInstance(Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/qs/QuickQSPanel;)Lcom/android/systemui/qs/QuickQSBrightnessController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSBrightnessController_Factory;->get()Lcom/android/systemui/qs/QuickQSBrightnessController;

    move-result-object p0

    return-object p0
.end method
