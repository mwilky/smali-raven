.class public abstract Lcom/android/systemui/decor/CornerDecorProvider;
.super Lcom/android/systemui/decor/DecorProvider;
.source "DecorProvider.kt"


# instance fields
.field public final alignedBounds$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProvider;-><init>()V

    new-instance v0, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;-><init>(Lcom/android/systemui/decor/CornerDecorProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/decor/CornerDecorProvider;->alignedBounds$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public abstract getAlignedBound1()I
.end method

.method public abstract getAlignedBound2()I
.end method

.method public final getAlignedBounds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/decor/CornerDecorProvider;->alignedBounds$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
