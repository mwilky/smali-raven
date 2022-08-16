.class public Lcom/android/settings/network/SwitchSlotSidecar;
.super Lcom/android/settings/AsyncTaskSidecar;
.source "SwitchSlotSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SwitchSlotSidecar$Result;,
        Lcom/android/settings/network/SwitchSlotSidecar$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/AsyncTaskSidecar<",
        "Lcom/android/settings/network/SwitchSlotSidecar$Param;",
        "Lcom/android/settings/network/SwitchSlotSidecar$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AsyncTaskSidecar;-><init>()V

    return-void
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchSlotSidecar;
    .locals 3

    const-class v0, Lcom/android/settings/network/SwitchSlotSidecar;

    const-string v1, "SwitchSlotSidecar"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SwitchSlotSidecar;

    return-object p0
.end method


# virtual methods
.method protected doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Lcom/android/settings/network/SwitchSlotSidecar$Result;
    .locals 4

    new-instance v0, Lcom/android/settings/network/SwitchSlotSidecar$Result;

    invoke-direct {v0}, Lcom/android/settings/network/SwitchSlotSidecar$Result;-><init>()V

    if-nez p1, :cond_0

    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    const-string p1, "Null param"

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Ljava/lang/Exception;

    return-object v0

    :cond_0
    :try_start_0
    iget v1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I
    :try_end_0
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "SwitchSlotSidecar"

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    :try_start_1
    const-string p0, "Wrong command."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Start to switch to euicc slot."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iget v2, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    iget-object p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v1, v2, p1}, Lcom/android/settings/network/UiccSlotUtil;->switchToEuiccSlot(Landroid/content/Context;IILandroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_2
    const-string v1, "Start to switch to removable slot."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iget-object p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v1, p1}, Lcom/android/settings/network/UiccSlotUtil;->switchToRemovableSlot(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    :try_end_1
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    iput-object p0, v0, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Ljava/lang/Exception;

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SwitchSlotSidecar;->doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Lcom/android/settings/network/SwitchSlotSidecar$Result;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/settings/network/SwitchSlotSidecar$Result;)V
    .locals 1

    iget-object p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/settings/network/SwitchSlotSidecar;->mException:Ljava/lang/Exception;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/network/SwitchSlotSidecar$Result;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SwitchSlotSidecar;->onPostExecute(Lcom/android/settings/network/SwitchSlotSidecar$Result;)V

    return-void
.end method

.method public runSwitchToEuiccSlot(IILandroid/telephony/SubscriptionInfo;)V
    .locals 2

    new-instance v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-direct {v0}, Lcom/android/settings/network/SwitchSlotSidecar$Param;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    iput p1, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iput-object p3, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    iput p2, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    invoke-super {p0, v0}, Lcom/android/settings/AsyncTaskSidecar;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public runSwitchToRemovableSlot(ILandroid/telephony/SubscriptionInfo;)V
    .locals 2

    new-instance v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-direct {v0}, Lcom/android/settings/network/SwitchSlotSidecar$Param;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    iput p1, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iput-object p2, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    iput v1, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    invoke-super {p0, v0}, Lcom/android/settings/AsyncTaskSidecar;->run(Ljava/lang/Object;)V

    return-void
.end method
