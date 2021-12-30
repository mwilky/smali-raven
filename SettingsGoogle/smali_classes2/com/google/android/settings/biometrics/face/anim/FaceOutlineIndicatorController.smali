.class public Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;
.super Ljava/lang/Object;
.source "FaceOutlineIndicatorController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mState:I

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mState:I

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mContext:Landroid/content/Context;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mState:I

    return-void
.end method

.method public show()V
    .locals 3

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mContext:Landroid/content/Context;

    const v2, 0x7f02012b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iput v1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceOutlineIndicatorController;->mState:I

    return-void
.end method
