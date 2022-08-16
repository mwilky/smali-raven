.class public final Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory_Impl;
.super Ljava/lang/Object;
.source "ShadeViewManagerFactory_Impl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;


# instance fields
.field public final delegateFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;
    .locals 11

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory_Impl;->delegateFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;->mediaContainerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;->featureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;->sectionHeaderVisibilityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/notification/SectionHeaderVisibilityProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;->nodeSpecBuilderLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;->shadeViewDifferLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager_Factory;->viewBarnProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;)V

    return-object p0
.end method
