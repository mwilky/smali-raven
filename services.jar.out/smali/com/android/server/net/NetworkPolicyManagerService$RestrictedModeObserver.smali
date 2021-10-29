.class Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestrictedModeObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mListener:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "restricted_networking_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public isRestrictedModeEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "restricted_networking_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mListener:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->isRestrictedModeEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;->onChange(Z)V

    return-void
.end method
