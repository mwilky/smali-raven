.class public final Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
