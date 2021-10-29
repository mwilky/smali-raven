.class public final Lcom/google/android/systemui/columbus/ColumbusContentObserver;
.super Landroid/database/ContentObserver;
.source "ColumbusContentObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;,
        Lcom/google/android/systemui/columbus/ColumbusContentObserver$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/android/systemui/columbus/ColumbusContentObserver$Companion;


# instance fields
.field private final activityManagerService:Landroid/app/IActivityManager;

.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

.field private final settingsUri:Landroid/net/Uri;

.field private final userSwitchCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->Companion:Lcom/google/android/systemui/columbus/ColumbusContentObserver$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Landroid/app/IActivityManager;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/ContentResolverWrapper;",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/app/IActivityManager;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p5}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->activityManagerService:Landroid/app/IActivityManager;

    new-instance p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userSwitchCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Landroid/app/IActivityManager;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Landroid/app/IActivityManager;Landroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getSettingsUri$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$updateContentObserver(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->updateContentObserver()V

    return-void
.end method

.method private final updateContentObserver()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 2

    const-string v0, "Columbus/ContentObserve"

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->updateContentObserver()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->activityManagerService:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userSwitchCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;

    invoke-interface {v1, p0, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to register user switch observer"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final deactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->activityManagerService:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userSwitchCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Columbus/ContentObserve"

    const-string v1, "Failed to unregister user switch observer"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
