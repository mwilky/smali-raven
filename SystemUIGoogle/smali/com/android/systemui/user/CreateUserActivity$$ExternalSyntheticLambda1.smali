.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    check-cast p1, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const p1, 0x7f130768

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v2, p1

    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    new-instance v6, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    const/4 p1, 0x0

    invoke-direct {v6, p1, p0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;

    const/4 p2, 0x7

    invoke-direct {v4, p2, p0}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/settingslib/users/UserCreatingDialog;

    iget-object p0, v1, Lcom/android/systemui/user/UserCreator;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, p1}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    new-instance p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/user/UserCreator;Ljava/lang/String;Lcom/android/settingslib/users/UserCreatingDialog;Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;)V

    invoke-static {p0}, Landroidx/core/R$attr;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
