.class final Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceDownDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FaceDownDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FaceDownDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FaceDownDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/FaceDownDetector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/FaceDownDetector;->access$202(Lcom/android/server/power/FaceDownDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {v0}, Lcom/android/server/power/FaceDownDetector;->access$300(Lcom/android/server/power/FaceDownDetector;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/FaceDownDetector;->access$202(Lcom/android/server/power/FaceDownDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {v0}, Lcom/android/server/power/FaceDownDetector;->access$300(Lcom/android/server/power/FaceDownDetector;)V

    :cond_1
    :goto_0
    return-void
.end method
