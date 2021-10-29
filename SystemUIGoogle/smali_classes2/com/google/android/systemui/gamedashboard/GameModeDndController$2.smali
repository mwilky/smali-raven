.class Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;
.super Landroid/content/BroadcastReceiver;
.source "GameModeDndController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/GameModeDndController;->createReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;->this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;->this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-static {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->access$202(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Z)Z

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;->this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->access$400(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->game_mode_dnd_rule_name:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->access$302(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;->this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-static {p1, v1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->access$202(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Z)Z

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;->this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->access$500(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2
        -0x122164c -> :sswitch_1
        0x311a1d6c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
