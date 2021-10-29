.class public final Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;
.super Landroid/app/SynchronousUserSwitchObserver;
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
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->access$updateBroadcastReceiver(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V

    return-void
.end method
