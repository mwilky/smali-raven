.class public final Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory_Impl;
.super Ljava/lang/Object;
.source "SplitShadeOverScroller_Factory_Impl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;


# instance fields
.field public final delegateFactory:Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller_Factory;->scrimControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    return-object p0
.end method
