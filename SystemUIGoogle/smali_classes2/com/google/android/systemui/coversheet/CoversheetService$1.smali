.class Lcom/google/android/systemui/coversheet/CoversheetService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CoversheetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/coversheet/CoversheetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/coversheet/CoversheetService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/coversheet/CoversheetService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/google/android/systemui/coversheet/CoversheetService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Coversheet"

    const-string v1, "onKeyguardVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    invoke-static {v0, p1}, Lcom/google/android/systemui/coversheet/CoversheetService;->access$102(Lcom/google/android/systemui/coversheet/CoversheetService;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    invoke-static {p0}, Lcom/google/android/systemui/coversheet/CoversheetService;->access$200(Lcom/google/android/systemui/coversheet/CoversheetService;)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    invoke-static {}, Lcom/google/android/systemui/coversheet/CoversheetService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Coversheet"

    const-string v1, "onUserUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/systemui/coversheet/CoversheetService;->access$302(Lcom/google/android/systemui/coversheet/CoversheetService;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    invoke-static {p0}, Lcom/google/android/systemui/coversheet/CoversheetService;->access$200(Lcom/google/android/systemui/coversheet/CoversheetService;)V

    return-void
.end method
