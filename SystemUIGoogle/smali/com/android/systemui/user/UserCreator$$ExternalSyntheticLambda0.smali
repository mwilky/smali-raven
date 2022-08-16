.class public final synthetic Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/user/UserCreator;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Dialog;

.field public final synthetic f$3:Ljava/lang/Runnable;

.field public final synthetic f$4:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$5:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/UserCreator;Ljava/lang/String;Lcom/android/settingslib/users/UserCreatingDialog;Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/user/UserCreator;

    iput-object p2, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$5:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/user/UserCreator;

    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/user/UserCreator$$ExternalSyntheticLambda0;->f$5:Ljava/util/function/Consumer;

    iget-object v5, v0, Lcom/android/systemui/user/UserCreator;->mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x0

    const-string v7, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v5, v1, v7, v6}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/user/UserCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v4, :cond_1

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4, v6}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/user/UserCreator;->mUserManager:Landroid/os/UserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
