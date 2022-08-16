.class public final Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FgsManagerController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/FgsManagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppItemViewHolder"
.end annotation


# instance fields
.field public final appLabelView:Landroid/widget/TextView;

.field public final durationView:Landroid/widget/TextView;

.field public final iconView:Landroid/widget/ImageView;

.field public final stopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b028a

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->appLabelView:Landroid/widget/TextView;

    const v0, 0x7f0b0288

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    const v0, 0x7f0b0289

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->iconView:Landroid/widget/ImageView;

    const v0, 0x7f0b028b

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    return-void
.end method
