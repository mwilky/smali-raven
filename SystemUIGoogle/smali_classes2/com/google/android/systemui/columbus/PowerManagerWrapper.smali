.class public Lcom/google/android/systemui/columbus/PowerManagerWrapper;
.super Ljava/lang/Object;
.source "PowerManagerWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;
    }
.end annotation


# instance fields
.field private final powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public isInteractive()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public newWakeLock(ILjava/lang/String;)Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object v0
.end method
