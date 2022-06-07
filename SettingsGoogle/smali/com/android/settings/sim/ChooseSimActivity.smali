.class public Lcom/android/settings/sim/ChooseSimActivity;
.super Landroid/app/Activity;
.source "ChooseSimActivity.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
.implements Lcom/android/settings/SidecarFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;
    }
.end annotation


# instance fields
.field private mEmbeddedSubscriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPsim:Z

.field private mIsSwitching:Z

.field private mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

.field private mNoPsimContinueToSettings:Z

.field private mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

.field private mSelectedItemIndex:I

.field private mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field private mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    return-void
.end method

.method private displaySubscriptions()V
    .locals 8

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifRecyclerLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->setOnItemSelectedListener(Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getRootItemHierarchy()Lcom/google/android/setupdesign/items/ItemHierarchy;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/ItemGroup;

    iput-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    iget-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    const v1, 0x7f0405c2

    const-string v2, ""

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;-><init>(Lcom/android/settings/sim/ChooseSimActivity;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, 0x7f04124d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/setupdesign/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v3}, Lcom/android/settings/network/SubscriptionUtil;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v2

    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v4}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->setId(I)V

    iget-object v3, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    invoke-virtual {v3, v0}, Lcom/google/android/setupdesign/items/ItemGroup;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    :cond_4
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    new-instance v5, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-direct {v5, p0}, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;-><init>(Lcom/android/settings/sim/ChooseSimActivity;)V

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    :cond_5
    invoke-virtual {v5, v6}, Lcom/google/android/setupdesign/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v6, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    if-ne v6, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-static {p0, v4}, Lcom/android/settings/network/SubscriptionUtil;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v4, v2

    :cond_7
    invoke-virtual {v5, v4}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->setId(I)V

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    invoke-virtual {v0, v5}, Lcom/google/android/setupdesign/items/ItemGroup;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    move v0, v4

    goto :goto_1

    :cond_8
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/sim/ChooseSimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private handleEnableRemovableSimError()V
    .locals 3

    iget v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    invoke-virtual {v2, v0}, Lcom/google/android/setupdesign/items/ItemGroup;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/items/Item;->setEnabled(Z)V

    const v2, 0x7f0405c3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    return-void
.end method

.method private updateSubscriptions()V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "has_psim"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    const-string v1, "no_psim_continue_to_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mNoPsimContinueToSettings:Z

    invoke-direct {p0}, Lcom/android/settings/sim/ChooseSimActivity;->updateSubscriptions()V

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ChooseSimActivity"

    const-string v0, "Unable to find available eSIM subscriptions."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "selected_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const-string v0, "is_switching"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    :cond_1
    const p1, 0x7f0d025b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const v1, 0x7f0405c6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/icu/text/MessageFormat;

    const v2, 0x7f0405c5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "count"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/sim/ChooseSimActivity;->displaySubscriptions()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    return-void
.end method

.method public onItemSelected(Lcom/google/android/setupdesign/items/IItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    check-cast p1, Lcom/google/android/setupdesign/items/Item;

    const v0, 0x7f0405c2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const-string v0, "ChooseSimActivity"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string p1, "Ready to switch to pSIM slot."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0, v1}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->run(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ready to switch to eSIM subscription with index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const-string v1, "selected_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    const-string v1, "is_switching"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "ChooseSimActivity"

    if-ne p1, v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Failed to switch slot in ChooseSubscriptionsActivity."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/sim/ChooseSimActivity;->handleEnableRemovableSimError()V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Switch slot successfully."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getFirstRemovableSubscription(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_7

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result p1

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Failed to switch subscription in ChooseSubscriptionsActivity."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    iget v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/ItemGroup;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/Item;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/Item;->setEnabled(Z)V

    const v1, 0x7f0405c3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    iget-boolean p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mNoPsimContinueToSettings:Z

    if-eqz p1, :cond_6

    const-string p0, "mNoPsimContinueToSettings is true which is not supported for now."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p1, "User finished selecting eSIM profile."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method
