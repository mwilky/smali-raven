.class final Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaCarouselController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activeMediaIndex:I

.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iput p2, p0, Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;->$activeMediaIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;->$activeMediaIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToPlayer$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;IIILjava/lang/Object;)V

    return-void
.end method
