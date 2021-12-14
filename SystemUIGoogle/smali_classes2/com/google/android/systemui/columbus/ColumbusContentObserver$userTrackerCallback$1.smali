.class public final Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "ColumbusContentObserver.kt"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "userContext"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->access$updateContentObserver(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->access$getCallback$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->access$getSettingsUri$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
