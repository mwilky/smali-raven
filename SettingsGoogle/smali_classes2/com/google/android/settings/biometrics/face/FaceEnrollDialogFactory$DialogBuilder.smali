.class public Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;
.super Ljava/lang/Object;
.source "FaceEnrollDialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogBuilder"
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mOnBackKeyListener:Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mOnBackKeyListener:Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;

    return-object p0
.end method


# virtual methods
.method public build()Landroid/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mOnBackKeyListener:Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder$1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-object v0
.end method

.method public setMessage(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnBackKeyListener(Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mOnBackKeyListener:Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method
