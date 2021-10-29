.class public final Lcom/android/systemui/user/CreateUserActivity_Factory;
.super Ljava/lang/Object;
.source "CreateUserActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/user/CreateUserActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final editUserInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/users/EditUserInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private final userCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/user/UserCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/user/UserCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/users/EditUserInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->userCreatorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->editUserInfoControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/user/CreateUserActivity_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/user/CreateUserActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/user/UserCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/users/EditUserInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;)",
            "Lcom/android/systemui/user/CreateUserActivity_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/user/CreateUserActivity_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/user/CreateUserActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/user/UserCreator;Lcom/android/settingslib/users/EditUserInfoController;Landroid/app/IActivityManager;)Lcom/android/systemui/user/CreateUserActivity;
    .locals 1

    new-instance v0, Lcom/android/systemui/user/CreateUserActivity;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/user/CreateUserActivity;-><init>(Lcom/android/systemui/user/UserCreator;Lcom/android/settingslib/users/EditUserInfoController;Landroid/app/IActivityManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/user/CreateUserActivity;
    .locals 2

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

    invoke-static {v0, v1, p0}, Lcom/android/systemui/user/CreateUserActivity_Factory;->newInstance(Lcom/android/systemui/user/UserCreator;Lcom/android/settingslib/users/EditUserInfoController;Landroid/app/IActivityManager;)Lcom/android/systemui/user/CreateUserActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/user/CreateUserActivity_Factory;->get()Lcom/android/systemui/user/CreateUserActivity;

    move-result-object p0

    return-object p0
.end method
