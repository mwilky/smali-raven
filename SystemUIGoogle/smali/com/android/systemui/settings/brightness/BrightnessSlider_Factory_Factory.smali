.class public final Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;
.super Ljava/lang/Object;
.source "BrightnessSlider_Factory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;)",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;
    .locals 1

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;->newInstance(Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;->get()Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    move-result-object p0

    return-object p0
.end method
