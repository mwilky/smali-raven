.class public final Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;
.super Ljava/lang/Object;
.source "UserSwitcherActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $item:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

.field public final synthetic this$0:Lcom/android/systemui/user/UserSwitcherActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserSwitcherActivity;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;->$item:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    iget-object v0, v0, Lcom/android/systemui/user/UserSwitcherActivity;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;->$item:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->onUserListItemClicked(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    :cond_2
    :goto_0
    return-void
.end method
