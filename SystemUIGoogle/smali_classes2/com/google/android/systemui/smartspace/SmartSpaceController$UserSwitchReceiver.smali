.class Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/SmartSpaceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Switching user: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartSpaceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    const/4 v1, -0x1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$402(Lcom/google/android/systemui/smartspace/SmartSpaceController;I)I

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->clear()V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$500(Lcom/google/android/systemui/smartspace/SmartSpaceController;Z)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$500(Lcom/google/android/systemui/smartspace/SmartSpaceController;Z)V

    return-void
.end method
