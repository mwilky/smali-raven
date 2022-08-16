.class public final synthetic Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowCameraControl()Z

    move-result p1

    if-nez p1, :cond_0

    const-class p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    const-string p0, "CompatUIWindowManager"

    const-string p1, "Camera compat shouldn\'t receive clicks in the hidden state."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    iget v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    check-cast v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onCameraControlStateUpdated(II)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    const p1, 0x7f0b0155

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    const p1, 0x7f0b0157

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    :goto_0
    return-void
.end method
