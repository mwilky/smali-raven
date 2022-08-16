.class public final Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;
.super Ljava/lang/Object;
.source "ActionReceiver.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $id:I

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $it:Lcom/android/systemui/broadcast/ReceiverData;

.field public final synthetic this$0:Lcom/android/systemui/broadcast/ActionReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/ReceiverData;Lcom/android/systemui/broadcast/ActionReceiver;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    iput-object p2, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    iput-object p3, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$intent:Landroid/content/Intent;

    iput p5, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    iget-object v0, v0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    iget-object v0, v0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    iget-object v1, v0, Lcom/android/systemui/broadcast/ActionReceiver;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget v2, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$id:I

    iget-object v0, v0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    iget-object p0, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logBroadcastDispatched(ILjava/lang/String;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
