.class public final Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;
.super Landroid/content/BroadcastReceiver;
.source "DeskClockAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/DeskClockAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->getAlertAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->getDoneAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method
