.class final Lcom/android/systemui/media/PlayerViewHolder$marquee$1;
.super Ljava/lang/Object;
.source "PlayerViewHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/PlayerViewHolder;->marquee(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $start:Z

.field final synthetic this$0:Lcom/android/systemui/media/PlayerViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/PlayerViewHolder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/PlayerViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/PlayerViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/media/PlayerViewHolder$marquee$1;->$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getLongPressText()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/media/PlayerViewHolder$marquee$1;->$start:Z

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
