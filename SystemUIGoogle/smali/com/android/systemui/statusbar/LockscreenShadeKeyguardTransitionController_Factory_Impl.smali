.class public final Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory_Impl;
.super Ljava/lang/Object;
.source "LockscreenShadeKeyguardTransitionController_Factory_Impl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;


# instance fields
.field public final delegateFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/dump/DumpManager;

    new-instance p0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;)V

    return-object p0
.end method
