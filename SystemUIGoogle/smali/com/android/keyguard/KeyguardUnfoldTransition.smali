.class public final Lcom/android/keyguard/KeyguardUnfoldTransition;
.super Ljava/lang/Object;
.source "KeyguardUnfoldTransition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyguardUnfoldTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyguardUnfoldTransition.kt\ncom/android/keyguard/KeyguardUnfoldTransition\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1819#2,2:115\n1571#2,9:117\n1819#2:126\n1820#2:128\n1580#2:129\n1#3:127\n*E\n*S KotlinDebug\n*F\n+ 1 KeyguardUnfoldTransition.kt\ncom/android/keyguard/KeyguardUnfoldTransition\n*L\n97#1,2:115\n106#1,9:117\n106#1:126\n106#1:128\n106#1:129\n106#1:127\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;

.field private static final LEFT:I

.field private static final RIGHT:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final filterNever:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSplitShadeOnly:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private parent:Landroid/view/ViewGroup;

.field private statusViewCentered:Z

.field private final unfoldProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/Triple<",
            "+",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private xTranslationMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUnfoldTransition;->Companion:Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/KeyguardUnfoldTransition;->LEFT:I

    const/4 v0, 0x1

    sput v0, Lcom/android/keyguard/KeyguardUnfoldTransition;->RIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfoldProgressProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->unfoldProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$filterSplitShadeOnly$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUnfoldTransition$filterSplitShadeOnly$1;-><init>(Lcom/android/keyguard/KeyguardUnfoldTransition;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterSplitShadeOnly:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/keyguard/KeyguardUnfoldTransition$filterNever$1;->INSTANCE:Lcom/android/keyguard/KeyguardUnfoldTransition$filterNever$1;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterNever:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/Triple;

    new-instance v2, Lkotlin/Triple;

    sget v3, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardUnfoldTransition;->Companion:Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;->getLEFT()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/Triple;

    sget v3, Lcom/android/systemui/R$id;->controls_button:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;->getLEFT()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/Triple;

    sget v3, Lcom/android/systemui/R$id;->lockscreen_clock_view_large:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;->getLEFT()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/Triple;

    sget v3, Lcom/android/systemui/R$id;->lockscreen_clock_view:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;->getLEFT()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/Triple;

    sget v3, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;->getRIGHT()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x4

    aput-object v2, v1, p1

    new-instance p1, Lkotlin/Triple;

    sget v2, Lcom/android/systemui/R$id;->wallet_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUnfoldTransition$Companion;->getRIGHT()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v2, v3, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    aput-object p1, v1, v0

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->ids:Ljava/util/Set;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->views:Ljava/util/List;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUnfoldTransition$1;-><init>(Lcom/android/keyguard/KeyguardUnfoldTransition;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    return-void
.end method

.method public static final synthetic access$findViews(Lcom/android/keyguard/KeyguardUnfoldTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUnfoldTransition;->findViews()V

    return-void
.end method

.method public static final synthetic access$getLEFT$cp()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardUnfoldTransition;->LEFT:I

    return v0
.end method

.method public static final synthetic access$getRIGHT$cp()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardUnfoldTransition;->RIGHT:I

    return v0
.end method

.method public static final synthetic access$translateViews(Lcom/android/keyguard/KeyguardUnfoldTransition;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUnfoldTransition;->translateViews(F)V

    return-void
.end method

.method private final findViews()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->parent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->ids:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Triple;

    invoke-virtual {v3}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v6, Lkotlin/Triple;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v4, v5, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->views:Ljava/util/List;

    :goto_2
    return-void
.end method

.method private final translateViews(F)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->xTranslationMax:F

    mul-float/2addr p1, v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->views:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Triple;

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getStatusViewCentered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->statusViewCentered:Z

    return p0
.end method

.method public final setup(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->parent:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_unfold_translation_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->xTranslationMax:F

    return-void
.end method
