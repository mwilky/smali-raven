.class Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VcnStatusCallbackInfo"
.end annotation


# instance fields
.field final mCallback:Landroid/net/vcn/IVcnStatusCallback;

.field final mPkgName:Ljava/lang/String;

.field final mSubGroup:Landroid/os/ParcelUuid;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    iput-object p4, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mUid:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;ILcom/android/server/VcnManagementService$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    invoke-static {}, Lcom/android/server/VcnManagementService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app died without unregistering VcnStatusCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/VcnManagementService;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V

    return-void
.end method
