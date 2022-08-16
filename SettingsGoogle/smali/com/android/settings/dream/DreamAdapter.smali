.class public Lcom/android/settings/dream/DreamAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DreamAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dream/IDreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedPos:I

.field private final mLayoutRes:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnabled(Lcom/android/settings/dream/DreamAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSelectedPos(Lcom/android/settings/dream/DreamAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/dream/DreamAdapter;->mLastSelectedPos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastSelectedPos(Lcom/android/settings/dream/DreamAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/dream/DreamAdapter;->mLastSelectedPos:I

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/settings/dream/IDreamItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dream/DreamAdapter;->mLastSelectedPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    iput-object p2, p0, Lcom/android/settings/dream/DreamAdapter;->mItemList:Ljava/util/List;

    iput p1, p0, Lcom/android/settings/dream/DreamAdapter;->mLayoutRes:I

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;

    iget-object p0, p0, Lcom/android/settings/dream/DreamAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dream/IDreamItem;

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->bindView(Lcom/android/settings/dream/IDreamItem;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/dream/DreamAdapter;->mLayoutRes:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;-><init>(Lcom/android/settings/dream/DreamAdapter;Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
