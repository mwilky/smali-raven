.class Lcom/android/server/am/UserController$5;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$finishUserStoppedAsync:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppedAsync:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppedAsync:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
