.class public final Lcom/android/systemui/statusbar/NotificationShelfController_Factory;
.super Ljava/lang/Object;
.source "NotificationShelfController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardBypassControllerProvider:Ljavax/inject/Provider;

.field public final notificationShelfProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->notificationShelfProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->notificationShelfProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationShelfController;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->notificationShelfProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    new-instance v3, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;-><init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
