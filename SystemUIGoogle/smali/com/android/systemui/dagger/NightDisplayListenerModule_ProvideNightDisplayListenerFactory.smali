.class public final Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;
.super Ljava/lang/Object;
.source "NightDisplayListenerModule_ProvideNightDisplayListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bgHandlerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final module:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/NightDisplayListenerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->module:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2

    sget-object v0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellModule_ProvidesComplicationLayoutParamsFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellModule_ProvidesComplicationLayoutParamsFactory;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->module:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->module:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/dagger/NightDisplayListenerModule;

    iget-object v1, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {v0, v1, p0}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->module:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    new-instance v2, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
