.class public final synthetic Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/EditUserInfoController;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/String;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/BiConsumer;

    iget-object v2, p1, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    move-object p2, v2

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz p0, :cond_3

    invoke-interface {p0, v1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
