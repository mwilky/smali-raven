.class public final Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Switching user: "

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

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

    iput p2, p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object p2, p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x0

    iput-object v1, p2, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    iput-object v1, p2, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method
