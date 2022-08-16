.class final Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DecorProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/decor/CornerDecorProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/decor/CornerDecorProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/CornerDecorProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;->this$0:Lcom/android/systemui/decor/CornerDecorProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;->this$0:Lcom/android/systemui/decor/CornerDecorProvider;

    invoke-virtual {v1}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBound1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;->this$0:Lcom/android/systemui/decor/CornerDecorProvider;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBound2()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
