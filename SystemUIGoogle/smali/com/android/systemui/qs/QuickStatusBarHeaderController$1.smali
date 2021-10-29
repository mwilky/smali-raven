.class Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private update()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->getPrivacyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)V

    return-void
.end method


# virtual methods
.method public onFlagLocationChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$302(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->update()V

    :cond_0
    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$202(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->update()V

    :cond_0
    return-void
.end method

.method public onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)V

    return-void
.end method
