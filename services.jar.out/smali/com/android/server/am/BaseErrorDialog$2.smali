.class public Lcom/android/server/am/BaseErrorDialog$2;
.super Landroid/os/Handler;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p1, v0}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$fputmConsuming(Lcom/android/server/am/BaseErrorDialog;Z)V

    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p0, v0}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    :cond_1
    :goto_0
    return-void
.end method
