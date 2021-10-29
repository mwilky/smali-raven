.class Lcom/android/server/blob/BlobStoreManagerService$LocalService;
.super Lcom/android/server/blob/BlobStoreManagerInternal;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$LocalService;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$LocalService;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public onIdleMaintenance()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$LocalService;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService;->runIdleMaintenance()V

    return-void
.end method
