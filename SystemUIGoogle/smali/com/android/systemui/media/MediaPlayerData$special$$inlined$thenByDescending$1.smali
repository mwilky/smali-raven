.class public final Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaPlayerData;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1\n+ 2 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n*L\n1#1,319:1\n837#2:320\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_thenByDescending:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_4

    :cond_0
    check-cast p2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->getShouldPrioritizeSs$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec()Z

    move-result p2

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    :cond_1
    xor-int/lit8 p2, p2, 0x1

    goto :goto_0

    :goto_1
    check-cast p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->getShouldPrioritizeSs$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec()Z

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_2

    :goto_3
    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_4
    return p0
.end method
