.class public final Lcom/google/android/systemui/elmyra/UserContentObserver;
.super Landroid/database/ContentObserver;
.source "UserContentObserver.java"


# instance fields
.field public final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mSettingsUri:Landroid/net/Uri;

.field public final mUserSwitchCallback:Lcom/google/android/systemui/elmyra/UserContentObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/UserContentObserver$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/UserContentObserver$1;-><init>(Lcom/google/android/systemui/elmyra/UserContentObserver;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mUserSwitchCallback:Lcom/google/android/systemui/elmyra/UserContentObserver$1;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mSettingsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mCallback:Ljava/util/function/Consumer;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;->activate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 5

    const-string v0, "Elmyra/UserContentObserver"

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mSettingsUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mUserSwitchCallback:Lcom/google/android/systemui/elmyra/UserContentObserver$1;

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

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
