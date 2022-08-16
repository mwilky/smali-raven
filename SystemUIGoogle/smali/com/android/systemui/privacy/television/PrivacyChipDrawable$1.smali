.class public final Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;
.super Ljava/lang/Object;
.source "PrivacyChipDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/television/PrivacyChipDrawable;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/television/PrivacyChipDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;->this$0:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;->this$0:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mListener:Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;->onFadeOutFinished()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;->mCancelled:Z

    return-void
.end method
