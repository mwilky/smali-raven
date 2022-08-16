.class public final Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory_Impl;
.super Ljava/lang/Object;
.source "SingleShadeLockScreenOverScroller_Factory_Impl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;


# instance fields
.field public final delegateFactory:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance v2, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    return-object v2
.end method
