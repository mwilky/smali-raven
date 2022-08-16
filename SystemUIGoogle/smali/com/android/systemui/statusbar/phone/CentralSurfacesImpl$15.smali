.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;
.super Ljava/lang/Object;
.source "CentralSurfacesImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

.field public final synthetic val$action:Ljava/lang/Runnable;

.field public final synthetic val$collapsePanel:Z

.field public final synthetic val$willAnimateOnKeyguard:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->val$action:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->val$collapsePanel:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->val$willAnimateOnKeyguard:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->val$action:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda2;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->val$collapsePanel:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->val$willAnimateOnKeyguard:Z

    :goto_0
    return p0
.end method

.method public final willRunAnimationOnKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->val$willAnimateOnKeyguard:Z

    return p0
.end method
