.class public final Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory_Impl;
.super Ljava/lang/Object;
.source "LightBarTransitionsController_Factory_Impl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;


# instance fields
.field public final delegateFactory:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    new-instance p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object p0
.end method
