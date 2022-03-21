.class final Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;
.super Ljava/lang/Object;
.source "UserSwitchDialogController.kt"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/user/UserSwitchDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DialogShowerImpl"
.end annotation


# instance fields
.field private final animateFrom:Landroid/app/Dialog;

.field private final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogLaunchAnimator;)V
    .locals 1

    const-string v0, "animateFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogLaunchAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 7

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iget-object v3, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromDialog$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/app/Dialog;ZILjava/lang/Object;)V

    return-void
.end method
