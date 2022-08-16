.class public final Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;
.super Ljava/lang/Object;
.source "DeskClockAction.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/DeskClockAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method
