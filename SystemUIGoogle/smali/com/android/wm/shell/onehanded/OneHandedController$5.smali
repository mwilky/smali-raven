.class public final Lcom/android/wm/shell/onehanded/OneHandedController$5;
.super Landroid/database/ContentObserver;
.source "OneHandedController.java"


# instance fields
.field public final synthetic val$onChangeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->val$onChangeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->val$onChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
