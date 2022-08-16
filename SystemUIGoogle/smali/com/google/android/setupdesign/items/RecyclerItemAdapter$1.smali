.class public final Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

.field public final synthetic val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/ItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    iput-object p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;

    iget-object p1, p1, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/google/android/setupdesign/items/AbstractItem;

    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
