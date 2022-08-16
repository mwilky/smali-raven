.class public final synthetic Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/AddSupervisedUserActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/users/AddSupervisedUserActivity;

    iput-object p2, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda1;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/users/AddSupervisedUserActivity;

    iget-object p0, p0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda1;->f$1:Landroid/app/AlertDialog;

    check-cast p1, Landroid/os/NewUserResponse;

    invoke-static {v0, p0, p1}, Lcom/android/settings/users/AddSupervisedUserActivity;->$r8$lambda$z2zFJZTkfWKjKt1uBYUkqP_tbmE(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/app/AlertDialog;Landroid/os/NewUserResponse;)V

    return-void
.end method
