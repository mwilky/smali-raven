.class public final Lcom/android/keyguard/KeyguardUnfoldTransition$1;
.super Ljava/lang/Object;
.source "KeyguardUnfoldTransition.kt"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUnfoldTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUnfoldTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$1;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$1;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUnfoldTransition;->access$translateViews(Lcom/android/keyguard/KeyguardUnfoldTransition;F)V

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$1;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUnfoldTransition;->access$translateViews(Lcom/android/keyguard/KeyguardUnfoldTransition;F)V

    return-void
.end method

.method public onTransitionStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$1;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUnfoldTransition;->access$findViews(Lcom/android/keyguard/KeyguardUnfoldTransition;)V

    return-void
.end method
