.class final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChipClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $backgroundView:Landroid/view/View;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$backgroundView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$getLogger$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->logChipClicked()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$getActivityStarter$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$intent:Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$backgroundView:Landroid/view/View;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method
