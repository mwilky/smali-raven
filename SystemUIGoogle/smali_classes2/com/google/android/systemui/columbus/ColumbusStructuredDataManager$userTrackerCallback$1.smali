.class public final Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "ColumbusStructuredDataManager.kt"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "userContext"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->access$getLock$p(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    monitor-enter p1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->access$fetchPackageStats(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->access$setPackageStats$p(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Lorg/json/JSONArray;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
