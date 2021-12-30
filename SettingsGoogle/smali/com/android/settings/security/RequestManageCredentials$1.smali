.class Lcom/android/settings/security/RequestManageCredentials$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RequestManageCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/RequestManageCredentials;->addOnScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/RequestManageCredentials;


# direct methods
.method constructor <init>(Lcom/android/settings/security/RequestManageCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$000(Lcom/android/settings/security/RequestManageCredentials;)Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrink()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$200(Lcom/android/settings/security/RequestManageCredentials;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p0}, Lcom/android/settings/security/RequestManageCredentials;->access$300(Lcom/android/settings/security/RequestManageCredentials;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p0}, Lcom/android/settings/security/RequestManageCredentials;->access$400(Lcom/android/settings/security/RequestManageCredentials;)V

    :cond_2
    :goto_0
    return-void
.end method
