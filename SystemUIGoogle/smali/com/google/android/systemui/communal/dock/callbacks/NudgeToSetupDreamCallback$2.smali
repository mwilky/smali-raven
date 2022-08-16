.class public final Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;
.super Landroid/content/BroadcastReceiver;
.source "NudgeToSetupDreamCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "onReceive(): "

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NudgeToSetupDream"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    iget-object p1, p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNudgeClickedAction:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    iget-object p1, p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.settings.DREAM_SETTINGS"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    iget-object p1, p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mContext:Landroid/content/Context;

    const-string p2, "HasClickedNudgeToSetupDream"

    invoke-static {p1, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    iget-object p1, p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNudgeDismissedAction:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    iget-object p1, p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mContext:Landroid/content/Context;

    const-string p2, "HasDismissedNudgeToSetupDream"

    invoke-static {p1, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->updatePresentation()V

    :cond_3
    return-void
.end method
