.class public final Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;
.super Ljava/lang/Object;
.source "PowerState.kt"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/PowerState;-><init>(Landroid/content/Context;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/PowerState;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/PowerState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/PowerState;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/PowerState;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/PowerState;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/PowerState;)V

    return-void
.end method
