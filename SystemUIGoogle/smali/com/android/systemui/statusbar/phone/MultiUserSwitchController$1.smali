.class Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;
.super Ljava/lang/Object;
.source "MultiUserSwitchController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->access$100(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->access$200(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->access$300(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Landroid/view/View;

    move-result-object p1

    :goto_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v1

    aget v4, v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    add-int/2addr v4, p1

    aput v4, v3, v0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->access$400(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Lcom/android/systemui/qs/QSDetailDisplayer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p0

    aget v1, v3, v1

    aget v0, v3, v0

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/qs/QSDetailDisplayer;->showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    return-void
.end method
