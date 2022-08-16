.class public final Lcom/google/android/systemui/columbus/PowerManagerWrapper;
.super Ljava/lang/Object;
.source "PowerManagerWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;
    }
.end annotation


# instance fields
.field public final powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    return-void
.end method
