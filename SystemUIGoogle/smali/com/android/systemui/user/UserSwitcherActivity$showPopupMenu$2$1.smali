.class public final Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;
.super Ljava/lang/Object;
.source "UserSwitcherActivity.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic $popupMenuAdapter:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $this_apply:Lcom/android/systemui/user/UserSwitcherPopupMenu;

.field public final synthetic this$0:Lcom/android/systemui/user/UserSwitcherActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserSwitcherActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/user/UserSwitcherPopupMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/UserSwitcherActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;",
            ">;",
            "Lcom/android/systemui/user/UserSwitcherPopupMenu;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->$popupMenuAdapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->$this_apply:Lcom/android/systemui/user/UserSwitcherPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    iget-object p1, p1, Lcom/android/systemui/user/UserSwitcherActivity;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->$popupMenuAdapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;

    sub-int/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    iget-object p2, p2, Lcom/android/systemui/user/UserSwitcherActivity;->manageUserRecord:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "android.settings.USER_SETTINGS"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    invoke-virtual {p3, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    iget-object p2, p2, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->onUserListItemClicked(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->$this_apply:Lcom/android/systemui/user/UserSwitcherPopupMenu;

    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->dismiss()V

    iget-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method
