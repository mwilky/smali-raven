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
.field private final activityManagerService:Landroid/app/IActivityManager;

.field private final contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/app/IActivityManager;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManagerService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->activityManagerService:Landroid/app/IActivityManager;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final create(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/google/android/systemui/columbus/ColumbusContentObserver;
    .locals 8
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

    iget-object v5, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->activityManagerService:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Landroid/app/IActivityManager;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
