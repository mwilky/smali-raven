.class public final Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;
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
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/KeyguardProximity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method
