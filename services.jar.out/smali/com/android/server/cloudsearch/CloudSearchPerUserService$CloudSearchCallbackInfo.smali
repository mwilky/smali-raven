.class public final Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
.super Ljava/lang/Object;
.source "CloudSearchPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cloudsearch/CloudSearchPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudSearchCallbackInfo"
.end annotation


# instance fields
.field public final mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mRequestId:Ljava/lang/String;

.field public final mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mRequestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    iput-object p3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    iput-object p4, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    invoke-interface {v0}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public linkToDeath()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public resurrectSessionLocked(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Landroid/os/IBinder;)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V

    return-void
.end method
