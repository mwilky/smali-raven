.class public final Lcom/android/systemui/ForegroundServiceController_Factory;
.super Ljava/lang/Object;
.source "ForegroundServiceController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final appOpsControllerProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->appOpsControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->appOpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->appOpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    new-instance v1, Lcom/android/systemui/classifier/SingleTapClassifier;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/classifier/SingleTapClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;F)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->appOpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpsController;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/ForegroundServiceController;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/ForegroundServiceController;-><init>(Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->appOpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationListener;

    new-instance v1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationListener;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
