.class public final Lcom/android/keyguard/KeyguardUnfoldTransition;
.super Ljava/lang/Object;
.source "KeyguardUnfoldTransition.kt"


# instance fields
.field public final context:Landroid/content/Context;

.field public final filterNever:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final filterSplitShadeOnly:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public statusViewCentered:Z

.field public final translateAnimator$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$filterSplitShadeOnly$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUnfoldTransition$filterSplitShadeOnly$1;-><init>(Lcom/android/keyguard/KeyguardUnfoldTransition;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterSplitShadeOnly:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lcom/android/keyguard/KeyguardUnfoldTransition$filterNever$1;->INSTANCE:Lcom/android/keyguard/KeyguardUnfoldTransition$filterNever$1;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterNever:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;-><init>(Lcom/android/keyguard/KeyguardUnfoldTransition;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->translateAnimator$delegate:Lkotlin/Lazy;

    return-void
.end method
