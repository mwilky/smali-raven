.class final Lcom/android/systemui/media/MediaHierarchyManager$register$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $mediaObject:Lcom/android/systemui/media/MediaHost;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$register$1;->$mediaObject:Lcom/android/systemui/media/MediaHost;

    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager$register$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$register$1;->$mediaObject:Lcom/android/systemui/media/MediaHost;

    iget p1, p1, Lcom/android/systemui/media/MediaHost;->location:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$register$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(ZZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
