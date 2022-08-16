.class public final Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DeskClockAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/DeskClockAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->getAlertAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    invoke-virtual {p2}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->getDoneAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method
