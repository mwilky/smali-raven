.class final Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerKeyRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method getLongPressTimeoutMs()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxMultiPressCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4300(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    return v0
.end method

.method onLongPress(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4700(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Not support long press power when device is not interactive."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->access$4800(Lcom/android/server/policy/PhoneWindowManager;J)V

    return-void
.end method

.method onMultiPress(JI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;JIZ)V

    return-void
.end method

.method onPress(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;JIZ)V

    return-void
.end method

.method onVeryLongPress(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->prepareForPossibleShutdown()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4900(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method
