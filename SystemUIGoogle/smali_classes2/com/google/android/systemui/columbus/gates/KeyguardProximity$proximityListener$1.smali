.class public final Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;
.super Ljava/lang/Object;
.source "KeyguardProximity.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/KeyguardProximity;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/Proximity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/KeyguardProximity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    const-string v0, "gate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V

    return-void
.end method
