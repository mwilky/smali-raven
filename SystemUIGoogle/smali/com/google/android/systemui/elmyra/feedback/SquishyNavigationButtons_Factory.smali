.class public final Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;
.super Ljava/lang/Object;
.source "SquishyNavigationButtons_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final centralSurfacesProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final keyguardViewMediatorProvider:Ljavax/inject/Provider;

.field public final navModeControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->navModeControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->navModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationModeController;

    new-instance v3, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/navigationbar/NavigationModeController;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons_Factory;->navModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/dump/DumpManager;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
