.class public Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "SwitchToEsimConfirmDialogActivity.java"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# instance fields
.field private mSubToEnabled:Landroid/telephony/SubscriptionInfo;

.field private mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public onConfirm(IZ)V
    .locals 2

    if-nez p2, :cond_0

    const p1, 0x7f0413a2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0413a1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "SwitchToEsimConfirmDialogActivity"

    const-string p2, "User confirmed to switch to embedded slot."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p2, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    const p1, 0x7f041242

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sub_to_enable"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    iput-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    const-string p1, "SwitchToEsimConfirmDialogActivity"

    const-string v0, "Cannot find SIM to enable."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-class v2, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v3, 0x1

    const p1, 0x7f0413a4

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, p1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f0413a3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f040ecc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const p1, 0x7f040564

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "SwitchToEsimConfirmDialogActivity"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Failed switching to eSIM slot."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Successfully switched to eSIM slot."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
