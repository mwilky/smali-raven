.class public final Lcom/android/systemui/user/CreateUserActivity_Factory;
.super Ljava/lang/Object;
.source "CreateUserActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityManagerProvider:Ljavax/inject/Provider;

.field public final editUserInfoControllerProvider:Ljavax/inject/Provider;

.field public final userCreatorProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->userCreatorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->editUserInfoControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->userCreatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/UserCreator;

    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->editUserInfoControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/users/EditUserInfoController;

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/systemui/user/CreateUserActivity;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/user/CreateUserActivity;-><init>(Lcom/android/systemui/user/UserCreator;Lcom/android/settingslib/users/EditUserInfoController;Landroid/app/IActivityManager;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->userCreatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->editUserInfoControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;-><init>(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
