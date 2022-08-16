.class public final Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;
.super Ljava/lang/Object;
.source "BroadcastDispatcherStartable_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final broadcastDispatcherProvider:Ljava/lang/Object;

.field public final contextProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/dagger/KeyguardModule;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->broadcastDispatcherProvider:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->broadcastDispatcherProvider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->broadcastDispatcherProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    const v2, 0x7f0b0636

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/View;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->broadcastDispatcherProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->broadcastDispatcherProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Landroid/content/Context;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->broadcastDispatcherProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->broadcastDispatcherProvider:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
