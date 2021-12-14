.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;
.source "GlobalActionsDialogLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const v2, 0x10803d0

    const v3, 0x10803d2

    const v4, 0x10403d2

    const v5, 0x10403d1

    const v6, 0x10403d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2502(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :cond_2
    return-void
.end method

.method onToggle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2302(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)Z

    new-instance p1, Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)V

    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
