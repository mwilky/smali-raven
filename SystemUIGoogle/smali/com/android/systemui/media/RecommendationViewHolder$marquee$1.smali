.class final Lcom/android/systemui/media/RecommendationViewHolder$marquee$1;
.super Ljava/lang/Object;
.source "RecommendationViewHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/RecommendationViewHolder;->marquee(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $start:Z

.field final synthetic this$0:Lcom/android/systemui/media/RecommendationViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/RecommendationViewHolder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/RecommendationViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/RecommendationViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/media/RecommendationViewHolder$marquee$1;->$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/RecommendationViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder;->getLongPressText()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/media/RecommendationViewHolder$marquee$1;->$start:Z

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
