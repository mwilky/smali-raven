.class final Lcom/android/server/devicestate/OverrideRequest;
.super Ljava/lang/Object;
.source "OverrideRequest.java"


# instance fields
.field private final mFlags:I

.field private final mPid:I

.field private final mRequestedState:I

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    iput p3, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    iput p4, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    return-void
.end method


# virtual methods
.method getFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    return v0
.end method

.method getPid()I
    .locals 1

    iget v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    return v0
.end method

.method getRequestedState()I
    .locals 1

    iget v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    return v0
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    return-object v0
.end method
