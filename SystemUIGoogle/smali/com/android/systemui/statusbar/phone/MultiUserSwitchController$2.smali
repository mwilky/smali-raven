.class public final Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "MultiUserSwitchController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->getCurrentUser()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription(Ljava/lang/String;)V

    return-void
.end method
