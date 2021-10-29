.class Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;
.super Ljava/lang/Object;
.source "ResumeOnRebootServiceProvider.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResumeOnRebootServiceCallback"
.end annotation


# instance fields
.field private mResult:Landroid/os/Bundle;

.field private final mResultLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    return-object v0
.end method

.method private getResult()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
