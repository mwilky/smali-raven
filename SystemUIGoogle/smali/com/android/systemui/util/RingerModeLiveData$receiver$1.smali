.class public final Lcom/android/systemui/util/RingerModeLiveData$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "RingerModeTrackerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/RingerModeLiveData;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/RingerModeLiveData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/RingerModeLiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/util/RingerModeLiveData;->initialSticky:Z

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
