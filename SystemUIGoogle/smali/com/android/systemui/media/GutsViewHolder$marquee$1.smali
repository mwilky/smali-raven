.class public final Lcom/android/systemui/media/GutsViewHolder$marquee$1;
.super Ljava/lang/Object;
.source "GutsViewHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $start:Z

.field public final synthetic this$0:Lcom/android/systemui/media/GutsViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/GutsViewHolder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/GutsViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/GutsViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/media/GutsViewHolder$marquee$1;->$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/GutsViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/GutsViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/systemui/media/GutsViewHolder$marquee$1;->$start:Z

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
