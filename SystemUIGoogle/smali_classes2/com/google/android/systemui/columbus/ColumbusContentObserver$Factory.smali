.class public final Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;
.super Ljava/lang/Object;
.source "ColumbusContentObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final handler:Landroid/os/Handler;

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final create(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/google/android/systemui/columbus/ColumbusContentObserver;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver;"
        }
    .end annotation

    const-string v0, "settingsUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v6, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
