.class final Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;
.super Ljava/lang/Object;
.source "SysUIUnfoldModule.kt"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/unfold/SysUIUnfoldModule;->provideSysUIUnfoldComponent(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        "Ljava/util/Optional<",
        "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $factory:Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;

.field final synthetic $rotationProvider:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scopedProvider:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
            ">;",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;->$rotationProvider:Ljava/util/Optional;

    iput-object p2, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;->$scopedProvider:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;->$factory:Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;->apply(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;->$rotationProvider:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1;

    iget-object v2, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;->$scopedProvider:Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1;->$factory:Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/unfold/SysUIUnfoldModule$provideSysUIUnfoldComponent$1$1;-><init>(Ljava/util/Optional;Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
