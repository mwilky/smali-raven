.class public final Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;
.super Ljava/lang/Object;
.source "BrightnessDialog_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/settings/brightness/BrightnessDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;->factoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;)",
            "Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;)Lcom/android/systemui/settings/brightness/BrightnessDialog;
    .locals 1

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDialog;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/settings/brightness/BrightnessDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    invoke-static {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;->newInstance(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;)Lcom/android/systemui/settings/brightness/BrightnessDialog;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;->get()Lcom/android/systemui/settings/brightness/BrightnessDialog;

    move-result-object p0

    return-object p0
.end method
