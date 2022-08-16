.class public final Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;
.super Ljava/lang/Object;
.source "FooterActionsView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $multiUserEnabled:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/FooterActionsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FooterActionsView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;->this$0:Lcom/android/systemui/qs/FooterActionsView;

    iput-boolean p2, p0, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;->$multiUserEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;->this$0:Lcom/android/systemui/qs/FooterActionsView;

    iget-boolean v1, p0, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;->$multiUserEnabled:Z

    iget-object v2, v0, Lcom/android/systemui/qs/FooterActionsView;->settingsContainer:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/qs/FooterActionsView;->qsDisabled:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/qs/FooterActionsView;->multiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    if-eqz v1, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/qs/FooterActionsView;->settingsContainer:Landroid/view/View;

    if-nez v0, :cond_4

    move-object v0, v3

    :cond_4
    if-eqz v1, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    :cond_5
    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;->this$0:Lcom/android/systemui/qs/FooterActionsView;

    iget-object v1, v0, Lcom/android/systemui/qs/FooterActionsView;->multiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-nez v1, :cond_6

    move-object v2, v3

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    if-nez v1, :cond_7

    move-object v1, v3

    :cond_7
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_8

    move v1, v4

    goto :goto_3

    :cond_8
    move v1, v6

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, v0, Lcom/android/systemui/qs/FooterActionsView;->settingsContainer:Landroid/view/View;

    if-nez v0, :cond_9

    move-object v1, v3

    goto :goto_4

    :cond_9
    move-object v1, v0

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move-object v3, v0

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    move v4, v6

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;->this$0:Lcom/android/systemui/qs/FooterActionsView;

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method
