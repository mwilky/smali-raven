.class public final Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FgsManagerController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/FgsManagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/FgsManagerController$RunningApp;",
            ">;"
        }
    .end annotation
.end field

.field public final lock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->lock:Ljava/lang/Object;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    check-cast p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v1, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->iconView:Landroid/widget/ImageView;

    check-cast p2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget-object p2, p2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->appLabelView:Landroid/widget/TextView;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget-object v1, v1, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget-wide v3, v3, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->timeStarted:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/text/format/DateUtils;->formatDuration(JI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$onBindViewHolder$2$1;-><init>(Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;Lcom/android/systemui/qs/FgsManagerController;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    sget-object p2, Lcom/android/systemui/qs/FgsManagerController$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    if-ne p0, p2, :cond_0

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget-boolean p0, p0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->stopped:Z

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const p2, 0x7f130305

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const v0, 0x7f130304

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance p0, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e00a4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
