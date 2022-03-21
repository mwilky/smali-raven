.class final Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;
.super Ljava/lang/Object;
.source "SysUIUnfoldModule.kt"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1;->apply(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
        "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $factory:Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;

.field final synthetic $p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

.field final synthetic $p2:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;->$factory:Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;

    iput-object p2, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;->$p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iput-object p3, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;->$p2:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/SysUIUnfoldComponent;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;->$factory:Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;

    iget-object v1, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;->$p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    const-string v2, "p1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;->$p2:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    const-string v2, "p2"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p3"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;->create(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1$1;->apply(Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    move-result-object p0

    return-object p0
.end method
