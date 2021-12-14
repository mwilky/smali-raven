.class public final Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ColumbusStructuredDataManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ":"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, ","

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected package name tokens: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/StructuredData"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->access$getAllowPackageList$p(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->access$removePackage(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
