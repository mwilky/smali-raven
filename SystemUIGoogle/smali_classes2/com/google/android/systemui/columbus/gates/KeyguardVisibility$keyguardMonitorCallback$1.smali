.class public final Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;
.super Ljava/lang/Object;
.source "KeyguardVisibility.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;-><init>(Landroid/content/Context;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;)V

    return-void
.end method
