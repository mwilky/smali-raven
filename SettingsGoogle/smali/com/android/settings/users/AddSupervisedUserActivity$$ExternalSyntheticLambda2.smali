.class public final synthetic Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/AddSupervisedUserActivity;

.field public final synthetic f$1:Landroid/os/NewUserRequest;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/os/NewUserRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/users/AddSupervisedUserActivity;

    iput-object p2, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$1:Landroid/os/NewUserRequest;

    iput-object p3, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/users/AddSupervisedUserActivity;

    iget-object v1, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$1:Landroid/os/NewUserRequest;

    iget-object v2, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$2:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;->f$3:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, p0}, Lcom/android/settings/users/AddSupervisedUserActivity;->$r8$lambda$TV7JLcV7Npfv0NbudsIJoaveYVw(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/os/NewUserRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method
