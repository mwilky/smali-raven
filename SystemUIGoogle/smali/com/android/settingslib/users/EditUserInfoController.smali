.class public Lcom/android/settingslib/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field private final mFileAuthority:Ljava/lang/String;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mWaitingForActivityResult:Z


# direct methods
.method public static synthetic $r8$lambda$qQR0vdyjqCE-dLBJ8kVFHHSh-Co(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserInfoController;->lambda$buildDialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s5F2fUsPG09Rk0DNPho5Ed5gKdM(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/users/EditUserInfoController;->lambda$buildDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$td0Vm6FdkwUDLFeBBFLth5nTFcw(Lcom/android/settingslib/users/EditUserInfoController;Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settingslib/users/EditUserInfoController;->lambda$buildDialog$0(Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController;->mFileAuthority:Ljava/lang/String;

    return-void
.end method

.method private buildDialog(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroid/widget/EditText;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p8}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p8}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getUserIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private synthetic lambda$buildDialog$0(Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p5, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/android/settingslib/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_1

    move-object p1, p5

    :cond_1
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_2

    move-object p3, p2

    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz p4, :cond_3

    invoke-interface {p4, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$buildDialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method canChangePhoto(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canCropPhoto(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canChoosePhoto(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canTakePhoto(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/users/ActivityStarter;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    move-object v9, p0

    move-object v1, p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/settingslib/R$layout;->edit_user_info_dialog_content:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/android/settingslib/R$id;->user_name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    move-object v5, p4

    invoke-virtual {v4, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/android/settingslib/R$id;->user_photo:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    move-object v6, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v7, -0x2710

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_0
    invoke-direct {p0, p1, v6}, Lcom/android/settingslib/users/EditUserInfoController;->getUserIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->canChangePhoto(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/users/EditUserInfoController;->createEditUserPhotoController(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;

    move-result-object v0

    iput-object v0, v9, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, v4

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/users/EditUserInfoController;->buildDialog(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v9, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, v9, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method createEditUserPhotoController(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 8

    new-instance v7, Lcom/android/settingslib/users/EditUserPhotoController;

    iget-object v4, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    iget-object v6, p0, Lcom/android/settingslib/users/EditUserInfoController;->mFileAuthority:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-object v7
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pending_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    const-string v1, "awaiting_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pending_photo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean p0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    const-string v0, "awaiting_result"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method
