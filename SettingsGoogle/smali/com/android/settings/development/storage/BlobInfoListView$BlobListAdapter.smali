.class Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BlobInfoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/storage/BlobInfoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlobListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/app/blob/BlobInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/storage/BlobInfoListView;


# direct methods
.method constructor <init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object p3, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    invoke-static {p3}, Lcom/android/settings/development/storage/BlobInfoListView;->access$000(Lcom/android/settings/development/storage/BlobInfoListView;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/android/settings/development/storage/BlobInfoViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/storage/BlobInfoViewHolder;

    move-result-object p2

    iget-object p3, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobInfo;

    iget-object v0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0403fe

    invoke-virtual {v1, v4, v3}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobExpiry:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getExpiryTimeMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/settings/development/storage/SharedDataUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0403fd

    invoke-virtual {p0, v2, v1}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobSize:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getSizeBytes()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/android/settings/development/storage/SharedDataUtils;->formatSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    :goto_0
    return-void
.end method
