.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;
.super Ljava/lang/Object;
.source "SystemEventChipAnimationController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final locationPublisherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->statusBarViewFactoryProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->locationPublisherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;)",
            "Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->statusBarViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->locationPublisherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController_Factory;->get()Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    move-result-object p0

    return-object p0
.end method
