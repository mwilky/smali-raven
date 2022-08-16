.class public final Lcom/android/keyguard/clock/ClockManager$2;
.super Ljava/lang/Object;
.source "ClockManager.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager$DockEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/ClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$2;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$2;->this$0:Lcom/android/keyguard/clock/ClockManager;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/clock/ClockManager;->mIsDocked:Z

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method
