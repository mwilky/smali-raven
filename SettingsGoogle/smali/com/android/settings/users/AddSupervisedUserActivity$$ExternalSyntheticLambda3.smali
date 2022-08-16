.class public final synthetic Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/os/NewUserResponse;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/os/NewUserResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda3;->f$1:Landroid/os/NewUserResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda3;->f$1:Landroid/os/NewUserResponse;

    invoke-static {v0, p0}, Lcom/android/settings/users/AddSupervisedUserActivity;->$r8$lambda$V2UWma0OwKpKd1Du7ohivNTt_q4(Ljava/util/function/Consumer;Landroid/os/NewUserResponse;)V

    return-void
.end method
