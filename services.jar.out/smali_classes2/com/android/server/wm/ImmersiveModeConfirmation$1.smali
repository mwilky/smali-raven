.class Lcom/android/server/wm/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$700()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$702(Z)Z

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$800(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$900(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1000(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    return-void
.end method
