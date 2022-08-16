.class public final Lcom/android/systemui/user/UserCreator_Factory;
.super Ljava/lang/Object;
.source "UserCreator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/user/UserCreator_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/user/UserCreator_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/user/UserCreator_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/user/UserCreator_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/user/UserCreator_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v1, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;-><init>(ILcom/android/systemui/statusbar/CommandQueue;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/user/UserCreator_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    new-instance v1, Lcom/android/systemui/user/UserCreator;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/user/UserCreator;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/user/UserCreator_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;-><init>(Landroid/content/Context;Lcom/android/systemui/telephony/TelephonyListenerManager;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
