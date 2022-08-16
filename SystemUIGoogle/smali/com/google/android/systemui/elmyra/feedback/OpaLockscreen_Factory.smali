.class public final Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;
.super Ljava/lang/Object;
.source "OpaLockscreen_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final centralSurfacesProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/FrameworkServicesModule;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->keyguardStateControllerProvider:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->keyguardStateControllerProvider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->keyguardStateControllerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const v1, 0x7f0e024d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.status_bar_notification_shelf could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->keyguardStateControllerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v1, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->keyguardStateControllerProvider:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/dagger/FrameworkServicesModule;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
